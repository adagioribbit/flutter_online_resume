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
  static const BoxConstraints TOOLBAR_ACTIONS_BOXCONTRAINTS = BoxConstraints(
    minHeight: SOCIAL_BUTTON_HEIGHT,
    maxHeight: SOCIAL_BUTTON_HEIGHT,
    minWidth: SOCIAL_BUTTON_HEIGHT,
    maxWidth: SOCIAL_BUTTON_HEIGHT,
  );
  static const BoxConstraints TOOLBAR_ACTIONS_BOXCONTRAINTS_FOLDABLE =
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
    'fr': 'lib/assets/french_flag.png',
    'en': 'lib/assets/uk_flag.png',
  };
  static const Map<bool, String> DARK_MODE_IMAGE_PATH = {
    true: 'lib/assets/clair.png',
    false: 'lib/assets/sombre.png',
  };
  //static const Map<bool, String> DARK_MODE_IMAGE_PATH = {
  //  true: 'lib/assets/diurne.png',
  //  false: 'lib/assets/nocturne.png',
  //};
  //static const Map<bool, String> DARK_MODE_IMAGE_PATH = {
  //  true: 'lib/assets/soleil.png',
  //  false: 'lib/assets/lune.png',
  //};
  static const String APP_TITLE = 'Benjamin Israël';
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
  static const Map<String, String> LANGUAGE_SWITCH_TOOLTIP = {
    'fr': 'Switch to english',
    'en': 'Afficher en français',
  };
  static const Map<String, String> APP_SUBTITLE = {
    'fr': 'Analyste développeur',
    'en': 'Software developer',
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
    'en': 'Please, download my resume'
  };
  static const Map<String, String> RESUME_PRESENTATION_BOREDOM = {
    'fr': 'Je m\'ennui !!\n     J\'en ai marre !!!',
    'en': 'I am boooored!\nI can\'t stand it any longer!'
  };
  static const Map<String, String> RESUME_PRESENTATION_OUTCRY = {
    'fr': 'S\'il vous plaît,\nembauchez-moi !',
    'en': 'Have a heart,\nemploy me!'
  };
  static const Map<String, String> RESUME_PRESENTATION_INSTAGRIT = {
    'fr': 'Mes derniers posts Instagram',
    'en': 'My latest posts on the gram'
  };

  static const Map<String, String> LANGUAGES = {
    'fr': 'Langages',
    'en': 'Languages'
  };
  static const Map<String, String> TOOLS = {'fr': 'Outils', 'en': 'Tools'};
  static const Map<String, String> LEWAGON_PERIOD = {
    'fr': '\nJuillet 2024 à Septembre 2024',
    'en': '\nJuly to September 2024'
  };
  static const String LEWAGON_DEGREE = '\nBootcamp Data Science & IA';
  static const Map<String, String> LEWAGON_CURRICULUM = {
    'fr':
        'Dans la continuité de ma licence, cette formation m\'a appris à mettre en œuvre les librairies Python de référence dans le domaine du big data pour la construction de tableaux de bord financiers, d\'algorithmes de recommandations et autres modèles prédictifs utilisés dans la création et l\'entraînement d\'intelligences artificielles capables notamment d\'analyser et classifier automatiquement des données textuelles, des images, voire des vidéos.',
    'en':
        'Following on from my previous degree, I have studied data science and AI hands-on for three months, using the most known Python libraries in the field of big data on a day to day basis  in order to produce financial dashboards, recommendation algorithms and predictive models, laying the basis for training both supervised and unsupervised artificial intelligence agents capable of automatically analyse and classify data from sources as various as texts, images and videos.'
  };

  static const Map<String, String> LECNAM_PERIOD = {
    'fr': '\nSeptembre 2016 à Juillet 2017 ',
    'en': '\nSeptember 2016 to July 2017'
  };
  static const String LECNAM_DEGREE = '\nLicence Professionnelle ACSID – OLAP';
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
        'Ma première tentative de carrière s\'est faite dans le milieu de la traduction littéraire.\n\tLe manque de contacts dans le milieu de l\'édition a été un frein au développement de mon activité et j\'ai du renoncer à cet objectif.\n\tMes études en langue, littérature et civilisation étrangère m\'ont tout de même permis d\'aquérir un niveau d\'anglais C2 qui m\'est utile tous les jours dans mon activité actuelle.',
    'en':
        'My first attempt at a career was in literary translation.\n\tLacking insider contacts in publishing houses, I ultimately had to give up on that dream.\n\tOn the bright side, my studies allowed me to acquire a C2 level in English which is a really useful asset in my current activity.'
  };
}
