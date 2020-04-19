
let jsonMockData = """
{
  "personal_info": {
    "name": "Tomasz",
    "surname": "Trela",
    "specialization": "iOS Developer",
    "date_of_birth": "28.10.1991",
    "address": "Skarbińskiego 10, Kraków",
    "phone_number": "783685337",
    "email": "t.trela91@gmail.com",
    "image_url": "https://scontent-frt3-1.xx.fbcdn.net/v/t31.0-8/22829433_1455476174489151_2780896097387092972_o.jpg?_nc_cat=104&_nc_sid=85a577&_nc_ohc=8uOME8lQVvMAX-kkoXc&_nc_ht=scontent-frt3-1.xx&oh=9d011620db1df7e8d0ddf826554f53a6&oe=5EC2DE0E"
  },
  "education": [
    {
      "date_from": "2015",
      "date_to": "2016",
      "name": "AGH University of Science and Technology in Cracow",
      "subject": "MSc in Industrial Computer Science",
      "faculty": "Faculty of Metals Engineering and Industrial Computer Science",
      "image_url": "https://www.agh.edu.pl/typo3temp/_processed_/csm_znak_graficzny_agh_f2af8452d6.jpg"
    },
    {
      "date_from": "2011",
      "date_to": "2015",
      "name": "AGH University of Science and Technology in Cracow",
      "subject": "BSc in Computer Science",
      "faculty": "Faculty of Metals Engineering and Industrial Computer Science",
      "image_url": "https://www.agh.edu.pl/typo3temp/_processed_/csm_znak_graficzny_agh_f2af8452d6.jpg"
    }
  ],
  "courses": [
    {
      "date_from": "15.10.2016",
      "date_to": "16.10.2016",
      "place": "Niebezpiecznik.pl",
      "subject": "Mobile Applications Security",
      "image_url": "https://data1.cupsell.pl/upload/generator/4082/640x420/193019_print-trimmed-1.png?resize=max_sizes&key=55f9a22768eed085006592c1174c0235"
    },
    {
      "date_from": "25.06.2018",
      "date_to": "29.06.2018",
      "place": "ALTKOM AKADEMIA",
      "subject": "Advanced Python Techniques",
      "faculty": null,
      "image_url": "https://edubroker.pl/img/artykuly/5/2019_03/7249.jpg"
    }
  ],
  "own_projects": [
    {
      "tile": "Tuku Tuku - Name 3 Things in 5 Seconds",
      "subtitle": "iOS Version",
      "description": "Very popular multiplayer party game, that is all about reflex and acting under the pressure of time. A player has to give 3 answers to a simple, yet challenging question in 5 seconds, before the bell rings. Available on app store.",
      "image_url": "https://is2-ssl.mzstatic.com/image/thumb/Purple113/v4/00/19/a6/0019a6a4-c82a-ee74-a6eb-d7f2d5b49417/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-7.png/460x0w.png"
    },
    {
      "tile": "Tabu Tabu",
      "subtitle": "iOS Version",
      "description": "Tabu Tabu is a party game where you need to have your team guess a word on a card, without using it and any of the forbidden words listed there. Available on app store.",
      "image_url": "https://is5-ssl.mzstatic.com/image/thumb/Purple113/v4/2c/7d/3f/2c7d3f31-1551-0808-db05-330de2a36d81/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/246x0w.png"
    },
    {
      "tile": "Ezen.se",
      "subtitle": "iOS Version",
      "description": "iOS application based on iBeacons making city communication more friendly for blind people. Application provides informations like bus stop name and current bus number and direction",
      "image_url": "https://scontent-frt3-1.xx.fbcdn.net/v/t1.0-9/13920767_965020623607910_3831736849381644306_n.jpg?_nc_cat=107&_nc_sid=85a577&_nc_ohc=hc7yPVBifJEAX-0IOk5&_nc_ht=scontent-frt3-1.xx&oh=1682393c8c637d5d13cb0d1802376195&oe=5EC16736"
    },
    {
      "tile": "The Underground Localizer",
      "subtitle": "iOS Version",
      "description": "iOS application for underground navigation based on iBeacons, at AGHacks hackathon event in about 40 hours of continuous work",
      "image_url": "https://challengepost-s3-challengepost.netdna-ssl.com/photos/production/challenge_thumbnails/000/151/900/datas/original.png"
    },
    {
      "tile": "BSc Thesis",
      "subtitle": "Arduino",
      "description": "Self balancing two wheel radio controlled robot.",
      "image_url": "https://www.agh.edu.pl/typo3temp/_processed_/csm_znak_graficzny_agh_f2af8452d6.jpg"
    },
    {
      "tile": "MSc Thesis",
      "subtitle": "Arduino",
      "description": "Camera stabilization based on BLDC motors.",
      "image_url": "https://www.agh.edu.pl/typo3temp/_processed_/csm_znak_graficzny_agh_f2af8452d6.jpg"
    }
  ],
  "work_experience": [
    {
      "company_name": "S-Labs sp. Zoo",
      "position": "iOS Developer",
      "date_from": "15.07.2016",
      "date_to": null,
      "description": "Project AppartMe - it allows controlling lighting, heating and electrical circuits as well as monitoring temperature and creating events both locally via Bluetooth and remotely via the Internet.",
      "responsibilities": [
        "Communication between all teams (Cloud, Prototypes, Mobile)",
        "supervising and designing company solutions",
        "Creating application architecture",
        "Creating application UI",
        "Creating application custom Driver which consists of: REST communication, user account, cloud, smart devices, Bluetooth communication: controlling smart devices, UOTA, WebSockets communication",
        "Unit and Integration Tests"
      ],
      "image_url": "https://media-exp1.licdn.com/dms/image/C510BAQFtQem2DnySvw/company-logo_200_200/0?e=1595462400&v=beta&t=Y9zuHSIkJalfo3Jkf54gEaCaceVuAjvf3lCiuOd-cOs"
    },
    {
      "company_name": "ARIOS - Augmented Reality Mobile Applications",
      "position": "iOS Developer",
      "date_from": "01.07.2014",
      "date_to": "31.12.2014",
      "description": "iOS Game developer using SpriteKit and SceneKit",
      "responsibilities": [
        "Develop a 3D augmented reality shooter game for iOS using SceneKit engine and Blender as a modeling tool"
      ]
    },
    {
      "company_name": "Elazığ Technical College, Turkey",
      "position": "Electronic technician",
      "date_from": "16.05.2010",
      "date_to": "31.05.2010",
      "description": "student exchange 'Leonardo da Vinci'",
      "responsibilities": [
        "Diagnostics of damaged electronic equipment",
        "Repair of damaged electronic equipment"
      ],
      "image_url": "https://upload.wikimedia.org/wikipedia/en/3/33/Firat_University_Seal.gif"
    }
  ],
  "my_skills": [
    {
      "type": "Programming",
      "skills": [
        "Knowledge of Swift",
        "Objective-C",
        "iOS SDK",
        "Arduino",
        "basics Android SDK",
        "Python",
        "REST",
        "Very good knowledge of iPhone and Android Bluetooth Smart Energy Technology"
      ]
    },
    {
      "type": "Software",
      "skills": [
        "Xcode",
        "Android Studio",
        "Blender"
      ]
    },
    {
      "type": "Foreign languages",
      "skills": [
        "Level B2+",
        "Certificate of graduation “Studio Cambridge” intermediate English Course of Cambridge"
      ]
    },
    {
      "type": "Other",
      "skills": [
        "Scrum",
        "driving license",
        "teamwork skills",
        "creativity",
        "commitment to work"
      ]
    }
  ]
}
""".data(using: .utf8)!
