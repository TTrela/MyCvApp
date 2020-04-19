//
//  MainScreenViewController.swift
//  MyCV
//
//  Created by Tomasz Trela on 19/04/2020.
//  Copyright © 2020 GAZ. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {
    private let viewModel: MainScreenViewModel
    private let personalInfoView: PersonalInfoView
    private let tableView: UITableView
    
    // MARK: - Inits
    init(viewModel: MainScreenViewModel) {
        self.viewModel = viewModel
        self.personalInfoView = PersonalInfoView(viewModel: viewModel.personalInfoViewModel())
        self.tableView = UITableView()
        
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Add personal info view
        view.addSubview(personalInfoView)
        personalInfoView.translatesAutoresizingMaskIntoConstraints = false
        personalInfoView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        personalInfoView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        personalInfoView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        // Add tableView
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: personalInfoView.bottomAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        // Setup tableView
        tableView.register(UINib(nibName: MainSectionTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: MainSectionTableViewCell.identifier)
        tableView.contentInset = UIEdgeInsets(top: 1, left: 0, bottom: 0, right: 0)
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.dataSource = self
        tableView.delegate = self
        
        // Setup UI
        tableView.backgroundColor = .clear
        view.backgroundColor = UIColor.mainColor
    }
}

// MARK: - UITableViewDataSource
extension MainScreenViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MainScreenViewModel.Section.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MainSectionTableViewCell.identifier) as! MainSectionTableViewCell
        
        let section = MainScreenViewModel.Section(rawValue: indexPath.row)!
        cell.viewModel = viewModel.cellViewModel(for: section)
    
        return cell
    }
}

// MARK: - UITableViewDelegate
extension MainScreenViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let section = MainScreenViewModel.Section(rawValue: indexPath.row)!
        
        #warning("iOS BUG - http://openradar.appspot.com/19563577")
        DispatchQueue.main.async {
            self.viewModel.onSectionSelected(section)
        }
    }
}
