// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Constants {
  static const double APPBAR_HEIGHT = 75.0;
  static const double TOOLBAR_HEIGHT = 75.0;
  static const double SOCIAL_BUTTON_HEIGHT = APPBAR_HEIGHT * 0.6;
  static const double SOCIAL_BUTTON_HEIGHT_FOLDABLE = APPBAR_HEIGHT * 0.58;
  static const double WIGGLING_BUTTON_HEIGHT = APPBAR_HEIGHT * 0.68;
  static const double WIGGLING_BUTTON_HEIGHT_FOLDABLE =
      WIGGLING_BUTTON_HEIGHT * .9;
  static const double WIGGLING_BUTTON_HEIGHT_SHRUNK =
      WIGGLING_BUTTON_HEIGHT * .7;
  static const double WIGGLING_BUTTON_HEIGHT_SHRUNK_FOLDABLE =
      WIGGLING_BUTTON_HEIGHT_FOLDABLE * .8;
  static const BoxConstraints APPBAR_ACTIONS_BOXCONTRAINTS = BoxConstraints(
    minHeight: SOCIAL_BUTTON_HEIGHT,
    maxHeight: SOCIAL_BUTTON_HEIGHT,
    minWidth: SOCIAL_BUTTON_HEIGHT,
    maxWidth: SOCIAL_BUTTON_HEIGHT,
  );
  static const BoxConstraints APPBAR_ACTIONS_BOXCONTRAINTS_FOLDABLE =
      BoxConstraints(
    minHeight: SOCIAL_BUTTON_HEIGHT_FOLDABLE,
    maxHeight: SOCIAL_BUTTON_HEIGHT_FOLDABLE,
    minWidth: SOCIAL_BUTTON_HEIGHT_FOLDABLE,
    maxWidth: SOCIAL_BUTTON_HEIGHT_FOLDABLE,
  );
  static const int HEADER_ANIMATION_DURATION = 250;
  static const int WIGGLING_BUTTON_ANIMATION_DURATION = 50;
}

class AppStrings {
  static const String LINKEDIN_URL =
      "https://www.linkedin.com/in/benjamin-isra%C3%ABl-247b26124/";
  static const String GITHUB_URL = "https://github.com/adagioribbit";
  static const String INSTAGRAM_URL = "https://www.instagram.com/ben.7994";

  static const Map<String, String> LANGUAGE_SWITCH_IMAGE_PATH = {
    'fr': 'lib/assets/appbar/french_flag.png',
    'en': 'lib/assets/appbar/uk_flag.png',
  };
  static const Map<bool, String> DARK_MODE_IMAGE_PATH = {
    true: 'lib/assets/appbar/clair.png',
    false: 'lib/assets/appbar/sombre.png',
  };
  //static const Map<bool, String> DARK_MODE_IMAGE_PATH = {
  //  true: 'lib/assets/appbar/diurne.png',
  //  false: 'lib/assets/appbar/nocturne.png',
  //};
  //static const Map<bool, String> DARK_MODE_IMAGE_PATH = {
  //  true: 'lib/assets/appbar/soleil.png',
  //  false: 'lib/assets/appbar/lune.png',
  //};
  static const String APP_TITLE = 'Benjamin Israël';
  static const Map<String, String> APP_SUBTITLE = {
    'fr': 'Analyste développeur',
    'en': 'Software developer',
  };

  /// TOOLTIPS
  static const Map<String, String> LANGUAGE_SWITCH_LOOP = {
    'fr': 'en',
    'en': 'fr',
  };
  static const Map<String, String> LANGUAGE_SWITCH_TOOLTIP = {
    'fr': 'Switch to english',
    'en': 'Afficher en français',
  };
  static const Map<bool, Map<String, String>> DARK_MODE_TOOLTIP = {
    true: {
      'fr': 'Mode clair',
      'en': 'Light mode',
    },
    false: {
      'fr': 'Mode sombre',
      'en': 'Dark mode',
    },
  };
  static const Map<String, String> LINKEDIN_TOOLTIP = {
    'fr': 'Me contacter sur LinkedIn',
    'en': 'Contact me on LinkedIn',
  };
  static const Map<String, String> GITHUB_TOOLTIP = {
    'fr': 'Mon GitHub',
    'en': 'My GitHub'
  };
  static const Map<String, String> INSTAGRAM_TOOLTIP = {
    'fr': 'Mon Insta',
    'en': 'My gram'
  };
  static const Map<String, String> EDUCATION_TOOLTIP = {
    'fr': 'Formation',
    'en': 'Education'
  };
  static const Map<String, String> SKILL_SETS_TOOLTIP = {
    'fr': 'Compétences',
    'en': 'Skill sets'
  };
  static const Map<String, String> WORK_EXPERIENCE_TOOLTIP = {
    'fr': 'Expériences',
    'en': 'Work experience'
  };

  /// MANILLA FOLDER CONTENT
  static const Map<String, String> MANILLAFOLDER_TITLE = {
    'fr': 'Dossier démo',
    'en': 'Demo book'
  };
  static const Map<String, String> RESUME_PRESENTATION_PRETEXT = {
    'fr': 'J\'ai créé ce site pour\nm\'entraîner sur Flutter.',
    'en': 'I created this site\nto train on Flutter.'
  };
  static const Map<String, String> RESUME_PRESENTATION_CALL_TO_ACTION = {
    'fr': 'Mes renseignements\nsont dispo ici',
    'en': 'My resume is\nonly a click away'
  };
  static const Map<String, String> RESUME_PRESENTATION_AUDIO_DESCRIPTION = {
    'fr': 'Activez Voice Over\npour plus de contenu',
    'en': 'Activate Voice Over\nto unlock more content'
  };
  static const Map<String, String> RESUME_PRESENTATION_OUTCRY = {
    'fr': 'Contactez-moi !\nJe suis peut-être encore disponible !',
    'en': 'Contact me now!\nI might still be available!'
  };
  static const Map<String, String> RESUME_PRESENTATION_INSTAGRIT = {
    'fr': 'Mes derniers posts Instagram',
    'en': 'My latest posts on the gram'
  };

  /// BUBBLE CONTENT
  static const Map<String, String> TITLE_PROJECT_DESCRIPTION = {
    'fr': 'Projet',
    'en': 'Project'
  };
  static const Map<String, String> TITLE_PROJECT_TASKS = {
    'fr': 'Réalisations',
    'en': 'Tasks'
  };
  static const Map<String, String> TITLE_DETAILS = {
    'fr': 'Programme complet',
    'en': 'Curriculum details'
  };
  static const Map<String, String> TITLE_LANGUAGES = {
    'fr': 'Langages',
    'en': 'Languages'
  };
  static const Map<String, String> TITLE_TOOLS = {
    'fr': 'Outils',
    'en': 'Tools'
  };

  static const Map<String, String> LEWAGON_PERIOD = {
    'fr': '\nJuillet 2024 à Septembre 2024',
    'en': '\nJuly to September 2024'
  };
  static const String LEWAGON_DEGREE = '\nBootcamp Data Science & IA';
  static const Map<String, String> LEWAGON_CURRICULUM = {
    'fr':
        'Dans la continuité de ma licence, cette formation m\'a appris à mettre en œuvre les librairies Python de référence dans le domaine du big data pour la construction de tableaux de bord financiers, d\'algorithmes de recommandations et autres modèles prédictifs utilisés dans la création et l\'entraînement d\'intelligences artificielles capables notamment d\'analyser et classifier automatiquement des données textuelles, des images, voire des vidéos.',
    'en':
        'Following on from my previous degree, I have studied data science and AI hands-on for three months, using the reknown cutting-edge Python libraries in the field of big data on a day to day basis  in order to produce financial dashboards, recommendation algorithms and predictive models, laying the basis for training both supervised and unsupervised artificial intelligence agents capable of automatically analyse and classify data from sources as various as texts, images and videos.'
  };

  static const Map<String, String> LECNAM_PERIOD = {
    'fr': '\nSeptembre 2016 à Juillet 2017 ',
    'en': '\nSeptember 2016 to July 2017'
  };
  static const String LECNAM_DEGREE = '\nLicence Professionnelle\nACSID – OLAP';
  static const Map<String, String> LECNAM_CURRICULUM = {
    'fr':
        'Axée principalement sur l\'apprentissage de l\'exploitation statistique de bases de données relationnelles, cette formation m\'a permis d\'acquérir des bases solides en modélisation UML et en optimisation de schémas et de requêtes SQL, mais également de découvrir les langages C et Java ainsi que les techniques et outils nécessaires au développement d\'applications web et Android, et au DevOps avec le scripting Shell et Docker.',
    'en':
        'Mainly focused on statistical exploitation of relational databases, this bachelor\'s degree curriculum offers a thorough overview of UML, an insight in SQL schemas and queries optimization, as well as an introduction to C and Java languages, both web and Android applications development, and basic DevOps skills with shell scripting and Docker.'
  };

  static const Map<String, String> GRETA_PERIOD = {
    'fr': '\nSeptembre 2015 à Juillet 2016',
    'en': '\nSeptember 2015 to July 2016'
  };
  static const String GRETA_DEGREE = '\nBTS SIO SLAM';
  static const Map<String, String> GRETA_CURRICULUM = {
    'fr':
        'Pendant cette préparation d\'un an à l\'épreuve nationale, j\'ai appris la programmation orientée objet en Python et PHP ainsi que les bases du SQL et du développement web.',
    'en':
        'During this one year preparation for the associate degree national exam, I learned object oriented programming in both Python and PHP, as well as basic SQL and web development.'
  };

  static const Map<String, String> UPEC_PERIOD = {
    'fr': '\nSeptembre 2004 à Juillet 2009',
    'en': '\nSeptember 2004 to July 2009'
  };
  static const String UPEC_DEGREE = '\nLicence LLCE anglais';
  static const Map<String, String> UPEC_CURRICULUM = {
    'fr':
        'Ma première tentative de carrière s\'est faite dans le milieu de la traduction littéraire. J\'ai passé plusieurs années à tenter de me faire une clientèle, mais le manque de contacts dans le milieu de l\'édition a été un frein au développement de mon activité et j\'ai du renoncer à cet objectif.\n\tMes études en langue, littérature et civilisation étrangère ainsi qu\'un séjour d\'un an en Ecosse m\'ont tout de même permis d\'aquérir un niveau d\'anglais C2 qui m\'est utile tous les jours dans mon activité actuelle.',
    'en':
        'My first attempt at a career was in literary translation. I spent a few years trying to build a clientele but, lacking insider contacts in publishing houses, I ultimately had to give up on that dream.\n\tOn the bright side, my studies, which where followed by a one year work experience as a teaching assistant in a Scottish private scool, allowed me to reach a C2 level in English which is a really useful asset in my current activity.'
  };

  static const Map<String, String> YARDSTICK_ONLINE_RESUME_BADGE = {
    'fr': 'Ce site',
    'en': 'This site'
  };
  static const Map<String, String> YARDSTICK_ONLINE_RESUME_PERIOD = {
    'fr': '\nDécembre 2024 - Mars 2025',
    'en': '\nDecember 2024 - March 2025'
  };
  static const Map<String, String> YARDSTICK_ONLINE_RESUME_PROJECT = {
    'fr':
        'Pour accentuer ma présence en ligne et démontrer mes talents, j\'ai codé ce site vitrine en mettant en œuvre le framework de développement hybride Flutter pour la première fois.',
    'en':
        'In order to boost my online visibility and showcase my talents, I wrote this site using Flutter for the first time.'
  };
  static const Map<String, List<String>> YARDSTICK_ONLINE_RESUME_TASKS = {
    'fr': [
      'Auto-formation sur Flutter 3.30',
      'Réalisation d\'animations 2D complexes',
    ],
    'en': ['Self-train on Flutter 3.30', 'Implement complex 2D animations']
  };

  static const Map<String, String> PRASTEL_MOBILE_PERIOD = {
    'fr': '\nJuin 2022 - Avril 2024',
    'en': '\nJune 2022 - April 2024'
  };
  static const Map<String, String> PRASTEL_MOBILE_PROJECT = {
    'fr':
        'Intégration de la gestion des nouvelles centrales d\'accès UNIK2E230-BT aux applications mobile PrastelBT et Télécommande Virtuelle Slim+BT, ainsi qu\'à leurs déclinaisons client (MProxBLE Control Configurator, MProxBT).',
    'en':
        'Update menus and features in the all-purpose PrastlBT and Télécommande Virtuelle Slim+BT hybrid apps to allow the management of the Bluetooth-enabled UNIK2E230-BT access central model, and keep their branded equivalent for wholesale clients up-to-date (MProxBLE Control Configurator, MProxBT).'
  };
  static const Map<String, List<String>> PRASTEL_MOBILE_TASKS = {
    'fr': [
      'Création de nouvelles interfaces utilisateurs à partir de l\'existant',
      'Création et intégration de différents modèles de portails 3D interactifs à l\'interface de programmation',
      'Correction de dysfonctionnements',
      'Correction de problèmes d\'affichage et extension de la compatibilité aux tablettes',
      'Mise à disposition des produits sur les plateformes en ligne et auprès des clients',
      'Mise en place d\'un suivi de projet et d\'un système de gestion de versions',
      'Assainissement de la base de code existante'
    ],
    'en': [
      'Develop new user interfaces based on legacy codebase',
      'Create and integrate real time and interactive 3D gate models animations',
      'Fix bugs on both back and front end',
      'Develop an adaptative layout for tablets',
      'Publish updates on online stores and provide wholesale clients with updated branded versions',
      'Introduce Git version tracking and Excel project monitoring',
      'Clean legacy codebase'
    ]
  };

  static const Map<String, String> PRASTEL_CR15NM_PERIOD = {
    'fr': '\nDécembre 2023',
    'en': '\nDecember 2023'
  };
  static const Map<String, String> PRASTEL_CR15NM_PROJECT = {
    'fr':
        'Correction et mise à jour de l\'application Android CR15NM pour la calibration de cellules photo-réceptrices.',
    'en':
        'Fix and update the CR15NM Android app used by automated gate professionals for photo-receptors calibration.'
  };
  static const Map<String, List<String>> PRASTEL_CR15NM_TASKS = {
    'fr': [
      'Recueil des nouveaux besoins',
      'Validation fonctionnelle de la mise à jour sur un banc de tests dédié',
      'Mise à disposition de la mise à jour sur Google Play'
    ],
    'en': [
      'Assess legacy code relevance and collect new requirements',
      'Validate the update on a dedicated electronic bench test',
      'Publish the update on Google Play'
    ]
  };

  static const Map<String, String> PRASTEL_SITE_INTERNE_PERIOD = {
    'fr': '\nSeptembre 2023',
    'en': '\nSeptember 2023'
  };
  static const Map<String, String> PRASTEL_SITE_INTERNE_PROJECT = {
    'fr':
        'Refonte d\'un site web interne de gestion des licences clients pour les centrales d\'accès M200-BT et UNIK2E230-BT.',
    'en':
        'Redesign an internal website used for product labeling and licence management of M200-BT and UNIK2E230-BT access central products.'
  };
  static const Map<String, List<String>> PRASTEL_SITE_INTERNE_TASKS = {
    'fr': [
      'Analyse des dysfonctionnements du site web existant codé en WebDev',
      'Recueil des nouveaux besoins',
      'Réalisation d\'un site équivalent avec une stack LAMP et des composants open source',
      'Intégration de l\'impression semi-automatique d\'étiquettes produits'
    ],
    'en': [
      'Analyze WebDev coded legacy website to assess malfunctions',
      'Collect new requirements',
      'Develop an improved version with open source web components on a LAMP stack',
      'Integration of semi-automated product labels printing',
    ]
  };

  static const Map<String, String> AMILTONE_MIGRATION_PERIOD = {
    'fr': '\nDécembre 2021 - Avril 2022',
    'en': '\nDecember 2021 - April 2022'
  };
  static const Map<String, String> AMILTONE_MIGRATION_PROJECT = {
    'fr':
        'Préparation de la migration d\'une série d\'applications SharePoint 2013 et Access 2007 dans le cadre de la mise à jour d\'une infrastructure sous Windows Server.',
    'en':
        'Establish a migration plan for a series of SharePoint 2013 and Access 2007 applications to run on an updated Windows Server virtualized infrastructure.'
  };
  static const Map<String, List<String>> AMILTONE_MIGRATION_TASKS = {
    'fr': [
      'Analyse de l\'existant',
      'Réalisation des tests de migration sur un ensemble de machines virtuelles',
      'Résolution des problèmes de compatibilité rencontrés',
      'Rédaction d\'une procédure de migration pour chacune des applications éligibles'
    ],
    'en': [
      'Analyze legacy codebase',
      'Run applications migration on virtualized test servers',
      'Solve arising compatibility issues or look for alternatives',
      'Write an exhaustive migration procedure for each application',
    ]
  };

  static const Map<String, String> AMILTONE_IOT_PERIOD = {
    'fr': '\nDécembre 2021 - Avril 2022',
    'en': '\nDecember 2021 - April 2022'
  };
  static const Map<String, String> AMILTONE_IOT_PROJECT = {
    'fr':
        'Mise en place du traitement des données issues d\'un réseau de capteurs IoT LoRaWan.',
    'en': 'Set up a data treatment chain for a LoRaWan IoT sensors network.'
  };
  static const Map<String, List<String>> AMILTONE_IOT_TASKS = {
    'fr': [
      'Analyse et correction de la solution Python existante',
      'Développement d\'un équivalent PowerShell',
      'Réalisation d\'un test de charge comparatif des deux solutions'
    ],
    'en': [
      'Review existing Python solution',
      'Develop an equivalent solution in PowerShell',
      'Test both solutions on a scalability and latency benchmark',
    ]
  };

  static const Map<String, String> AMILTONE_POWERBI_PERIOD = {
    'fr': '\nMars 2022',
    'en': '\nMarch 2022'
  };
  static const Map<String, String> AMILTONE_POWERBI_PROJECT = {
    'fr':
        'Création de tableaux de bord financiers à partir des bases de données client.',
    'en': 'Design financial dashboards in connection with client databases.'
  };
  static const Map<String, List<String>> AMILTONE_POWERBI_TASKS = {
    'fr': [
      'Recueil des besoins client',
      'Création des traitements de données dans Power Query',
      'Création des tableaux de bord dans Microsoft Power BI Desktop'
    ],
    'en': [
      'Collect client requirements',
      'Create relevant data processing pipelines in Power Query',
      'Create adequate dashboards in Power BI Desktop',
    ]
  };

  static const Map<String, String> AMILTONE_WSO2_PERIOD = {
    'fr': '\nOctobre 2021 - Novembre 2021',
    'en': '\nOctober 2021 - November 2021'
  };
  static const Map<String, String> AMILTONE_WSO2_PROJECT = {
    'fr': 'Test d\'évaluation de la solution WSO2 API Manager.',
    'en': 'Internal evaluation of WSO2 API Manager.'
  };
  static const Map<String, List<String>> AMILTONE_WSO2_TASKS = {
    'fr': [
      'Auto-formation sur l\'outil',
      'Développement d\'une API interne de traitement des données Jira'
    ],
    'en': [
      'Self-train on the software',
      'Develop an internal data pipeline connected to a Jira database'
    ]
  };

  static const Map<String, String> AMILTONE_ANDROID_PERIOD = {
    'fr': '\nSeptembre 2021 - Octobre 2021',
    'en': '\nSeptember 2021 - October 2021'
  };
  static const Map<String, String> AMILTONE_ANDROID_PROJECT = {
    'fr':
        'Maintenance corrective d\'applications Android grand public et professionnelles pour la factory mobile Amiltone.',
    'en':
        'Corrective maintenance of general public and professional Android apps for Amiltone mobile apps factory.'
  };
  static const Map<String, List<String>> AMILTONE_ANDROID_TASKS = {
    'fr': [
      'Analyse et correction de bugs',
      'Migration d\'une application vers AndroidX',
      'Refonte partielle du front-end d\'une application'
    ],
    'en': [
      'Analyze and fix bugs',
      'Migrate an app to AndroidX',
      'Implement new designs on an existing app',
    ]
  };

  static const Map<String, String> EVOLUCARE_IMAGING_PERIOD = {
    'fr': '\nOctobre 2016 - Septembre 2021',
    'en': '\nOctober 2016 - September 2021'
  };
  static const Map<String, String> EVOLUCARE_IMAGING_PROJECT = {
    'fr':
        'Projet Evolucare Imaging d\'application web de gestion à destination des professionnels de l\'imagerie médicale (solution RIS et PACS).',
    'en':
        'Development of Evolucare Imaging web application, a RIS and PACS solution for medical imaging professionals.'
  };
  static const Map<String, List<String>> EVOLUCARE_IMAGING_TASKS = {
    'fr': [
      'Développement full-stack de nouvelles fonctionnalités à partir de maquettes',
      'Mise en œuvre des normes DICOM / HL7 / SESAM-Vitale',
      'Portage en Java pour MacOS de composants externes codés en C# pour Windows',
      'Création d\'interfaces vers des API externes REST d\'opérateurs SMS',
      'Implémentation du Dossier Médical Personnel (API SOAP)',
      'Implémentation d\'un suivi patient par code barre dans la worklist du RIS',
      'Création et mise à jour de documentations internes'
    ],
    'en': [
      'Develop both back and front end functionalities based on mockups',
      'Improve PACS worklist respecting the DICOM norm',
      'Port Windows C# external components on MacOS using Java',
      'Implement both back and front end interfaces with the Dossier Médical Personnel SOAP API (HL7 / SESAM-Vitale)',
      'Implement both back and front end interfaces with SMS providers REST APIs',
      'Implement a barcode patient follow-up system in the RIS worklist',
      'Write and update internal documentation',
    ]
  };

  static const Map<String, String> EVOLUCARE_MOBILE_PERIOD = {
    'fr': '\nOctobre 2016 - Septembre 2021',
    'en': '\nOctober 2016 - September 2021'
  };
  static const Map<String, String> EVOLUCARE_MOBILE_PROJECT = {
    'fr':
        'Développement de l\'application mobile hybride Evolucare Imaging Mobile à destination des professionnels de l\'imagerie médicale.',
    'en':
        'Development of Evolucare Imaging Mobile, a partial Android and iOS hybrid app port of Evolucare Imaging RIS functionnalities.'
  };
  static const Map<String, List<String>> EVOLUCARE_MOBILE_TASKS = {
    'fr': [
      'Résoudre des dysfonctionnements sur le projet prototype',
      'Implémentation de la refonte graphique du projet prototype',
      'Développer de nouvelles fonctionnalités à partir de maquettes',
      'Créer des plugins multiplateformes en code mobile natif',
      'Créer et mettre à jour de la documentation interne'
    ],
    'en': [
      'Resolve prototype project bugs',
      'Implement a graphic redesign of prototype functionalities',
      'Full stack development of new functionalities based on mockup',
      'Create multiplatform plugins in native code',
      'Write and update internal documentation',
    ]
  };

  static const Map<String, String> EVOLUCARE_BORNE_BADGE = {
    'fr': 'Accueil',
    'en': 'Reception'
  };
  static const Map<String, String> EVOLUCARE_BORNE_PERIOD = {
    'fr': '\nSeptembre 2020 - Octobre 2020',
    'en': '\nSeptember 2020 - October 2020'
  };
  static const Map<String, String> EVOLUCARE_BORNE_PROJECT = {
    'fr':
        'Adaptation en PHP et Javascript d\'un prototype de borne d\'accueil RIS à partir des sources compilées d\'un projet Angular pour les Journées Françaises de la Radiologie 2020.',
    'en':
        'Adapt with PHP and Javascript the Angular prototype project of a RIS reception terminal for a last moment presentation at the main french radiology yearly convention (Journées Françaises de la Radiologie).'
  };
  static const Map<String, List<String>> EVOLUCARE_BORNE_TASKS = {
    'fr': [
      'Auto-formation sur Angular 10',
      'Réécriture de l\'ensemble de l\'interface graphique en PHP et JavaScript',
    ],
    'en': [
      'Self-train on Angular 10',
      'Write an equivalent user interface in PHP and JavaScript'
    ]
  };

  static const Map<String, String> YEAR_SINGULAR = {'fr': 'an', 'en': 'year'};
  static const Map<String, String> YEAR_PLURAL = {'fr': 'ans', 'en': 'years'};
  static const Map<String, String> MONTH_SINGULAR = {
    'fr': 'mois',
    'en': 'month'
  };
  static const Map<String, String> MONTH_PLURAL = {
    'fr': 'mois',
    'en': 'months'
  };

  static const Map<String, String> YARDSTICK_STARTER_BADGE = {
    'fr': 'Mes débuts',
    'en': 'Career start'
  };
  static const Map<String, String> YARDSTICK_STARTER_PERIOD = {
    'fr': '\nAvril 1999 - Octobre 2014',
    'en': '\nApril 1999 - October 2014'
  };
  static const Map<String, String> YARDSTICK_STARTER_PROJECT = {
    'fr':
        'La vie n\'est linéaire que lorsqu\'on la rêve.\nIl a fallu que j\'accumule des expériences diverses pour finalement arriver à me forger un avenir professionnel dans l\'informatique.\n\nSi la curiosité vous pique, j\'ai consigné l\'ensemble de mon parcours sur mon profil LinkedIn.',
    'en':
        'Life is not straightforward.\nI had to multiply experiences before I finally settled for a career as a software developer.\n\nIf you are intrigued, my full resume is available on my LinkedIn profile.'
  };
  static const Map<String, List<String>> YARDSTICK_STARTER_TASKS = {
    'fr': [
      'Lecteur web',
      'Assistant Professeur de langue française',
      'Dactylo',
      'Responsable de la maintenance informatique',
      'Technicien conseil hotline',
      'Employé de cybercafé / salle de jeux',
      'Agent de sécurité',
      'Surveillant scolaire',
    ],
    'en': [
      'Web news reviewer',
      'Assistant french teacher',
      'Dactylographer',
      'IT maintenance technician',
      'Hotliner',
      'Internet and online gaming cafe employee',
      'Security agent',
      'Playground superviser',
    ]
  };

  /// SKILL LIST FILTERS
  static const Map<String, String> TITLE_WEB_DEVELOPMENT = {
    'fr': 'Développement web',
    'en': 'Web Development',
  };
  static const Map<String, String> TITLE_MOBILE_DEVELOPMENT = {
    'fr': 'Développement mobile',
    'en': 'Mobile Development',
  };
  static const Map<String, String> TITLE_BUSINESS_INTELLIGENCE = {
    'fr': 'Informatique décisionnelle',
    'en': 'Business Intelligence',
  };
  static const Map<String, String> TITLE_ARTIFICIAL_INTELLIGENCE = {
    'fr': 'Intelligence artificielle',
    'en': 'Artificial Intelligence',
  };
  static const Map<String, String> TITLE_BACK_END_DEVELOPMENT = {
    'fr': 'Développement back-end',
    'en': 'Back-end Development',
  };
  static const Map<String, String> TITLE_DEVOPS = {
    'fr': 'DevOps',
    'en': 'DevOps',
  };
  static const Map<String, String> TITLE_TEAMWORK = {
    'fr': 'Travail en équipe',
    'en': 'Teamwork',
  };
  static const Map<String, String> TITLE_OTHER_SKILLS = {
    'fr': 'Autres',
    'en': 'Others',
  };
}

class SemanticsStrings {
  static const Map<String, String> GUIDED_TOUR_1 = {
    'fr':
        "Bonjour et bienvenue sur mon dossier de compétence interactif. Si vous pouviez le voir, vous seriez proprement subjugué par une animation de la mascotte du langage Darte, un colibri-bleu que j'ai réalisé moi-même avec un logiciel gratuit de création d'images vectorielles. Vous écarquilleriez les yeux devant la fluidité des transitions entre les différentes rubriques.",
    'en':
        'Hello and welcome on my online CV. If you could see it clearly, you would be amazed by the blue animated hummingbird that I created using a free vector graphics software ; your eyes would widen staring at the flabbergastingly smooth tranzitions between sections.',
  };
  static const Map<String, String> GUIDED_TOUR_2 = {
    'fr':
        "Mais ces époustoufflantes fioritures ne vous étant pas accessibles, je vais, pour vous, m'appuyer sur des phrases bien pensées pour agrémenter la visite. Rassurez-vous, je ne vous assènerai pas la liste détaillée de mes compétences. Sachez simplement que je suis spécialisé dans le développement d'applications web et mobile.",
    'en':
        "All of those breathtaking features being unfortunately inaccessible to you, I took the time to create this alternative guided tour. Rest assured, I ill not debilitate you with a boring list of skills and scores. Simply know that I am specialized in web and mobile development.",
  };
  static const Map<String, String> GUIDED_TOUR_3 = {
    'fr':
        "J'ai codé ce site avec Floeutteur pour me former moi-même sur un outil qui, je le pense, est plein d'avenir, et auquel je ne connaissais rien il y a encore deux mois. J'ai encodé ce texte de manière à ce qu'il soit intelligible dans les logiciels de synthèse vocale embarqués, mais il m'a fallu pour cela faire quelques écarts d'orthographe pour faciliter leur diction, et aussi allonger mes idées de quelques mots pour déjouer les anicroches prosodiques dans leur voix mécaniques. Ayant étudié la linguistique dans ma jeunesse sans en faire mon métier, cette gymnastique est pour moi l'équivalent d'un jeu, comme une grille de mots croisés.",
    'en':
        'I wrote this site using Flutter in order to self-train on that framework, knowing nothing about it just a few months ago.',
  };
  static const Map<String, String> GUIDED_TOUR_4 = {
    'fr':
        "C'est la première fois que j'encode un outil informatique pour fonctionner avec ces technologies d'assistance. On ne me l'a jamais demandé jusqu'à présent dans un cadre professionnel. Maintenant que je m'y attache, je voudrais pouvoir faire preuve de créativité ; créer un parcours complètement indépendant de celui pour le tout-venant, un parcours qui soit aussi attrayant que celui que j'ai commencé par mettre en place pour répondre aux contraintes habituelles de l'entreussoi validiste.",
    'en':
        'I am using voice over technology for the first time. I have never been asked to implement anything like this at work so far. But now, as I am slowly learning the specifics of assistive technologies, I wish I could be creative and write a fully independant guided tour, something just as appealing as the one I wrote with only sighted people in mind.',
  };
  static const Map<String, String> GUIDED_TOUR_5 = {
    'fr':
        "Pour ça, il faudrait probablement que j'ajoute des boutons invisibles ou des raccourcis tactiles dédiés aux malvoyants pour leur procurer une navigation intuitive. Toutefois, mon objectif premier est de trouver un emploi et d'étendre mes connaissances, mes priorités sont donc ailleurs.",
    'en':
        'And if I had the time, I would add invisible buttons or handy touchscreen shortcuts to build a navigation system dedicated to the visually impaired, but being unemployed my first priority  is to send applications all day long and learn new skills in order to make a good living again.',
  };
  static const Map<String, String> DOWNLOAD_BUTTON = {
    'fr': "Mon CV est téléchargeable ici en PDF.",
    'en': 'You can download my CV as a PDF here.',
  };
  static const Map<String, String> SOCIALMEDIA_SEGUE = {
    'fr':
        "La visite se termine ici, mais si vous voulez en savoir plus, trois options s'offrent à vous",
    'en':
        'This guided tour ends here, but if you want to know more, you have three options.',
  };
  static const Map<String, String> LINKEDIN = {
    'fr': "Vous pouvez me contacter sur Linekedine",
    'en': 'You can contact me on LinkedIn.',
  };
  static const Map<String, String> GITHUB = {
    'fr':
        "Vous pouvez aussi jeter un oeil sur mes projets publics sur Guiteub.",
    'en': 'You can also take a look at my GitHub projects.',
  };
  static const Map<String, String> INSTAGRAM = {
    'fr':
        "Sinon, vous pouvez aussi lorgner sur mes derniers posts sur Ainstagram.",
    'en':
        'Or even get to know me on a more personal level by peeking randomly through my Instagram history.',
  };
}
