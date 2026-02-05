part of 'values.dart';

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class NoteWorthyProjectDetails {
  NoteWorthyProjectDetails({
    required this.projectName,
    required this.isOnPlayStore,
    required this.isPublic,
    required this.technologyUsed,
    required this.isWeb,
    required this.isLive,
    this.projectDescription,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectName;
  final bool isPublic;
  final bool isOnPlayStore;
  final bool isWeb;
  final String? projectDescription;
  final bool isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    required this.company,
    this.companyUrl,
  });

  final String company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<CertificationData> certificationData = [
    CertificationData(
        url: "",
        title: 'Focal X',
        image: ImagePath.certImage,
        imageSize: 0.325,
        awardedBy: StringConst.ABOUT),
  ];
  static List<NavItemData> menuItems = [
    NavItemData(name: StringConst.HOME, route: StringConst.HOME_PAGE),
    NavItemData(name: StringConst.ABOUT, route: StringConst.ABOUT_PAGE),
    NavItemData(name: StringConst.WORKS, route: StringConst.WORKS_PAGE),
    NavItemData(
      name: StringConst.EXPERIENCE,
      route: StringConst.EXPERIENCE_PAGE,
    ),
  ];

  static List<SocialData> socialData = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUBLink,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_INLink,
    ),
    SocialData(
      name: StringConst.WHATSAPP,
      iconData: FontAwesomeIcons.whatsapp,
      url: StringConst.WhatsappLink,
    ),
    SocialData(
      name: StringConst.FACEBOOK,
      iconData: FontAwesomeIcons.facebook,
      url: StringConst.FacebookLink,
    ),
    SocialData(
      name: StringConst.TELEGRAM,
      iconData: FontAwesomeIcons.telegram,
      url: StringConst.TELEGRAMLink,
    ),
  ];

  static List<SocialData> socialData1 = [
    SocialData(
      name: StringConst.TELEGRAM,
      iconData: FontAwesomeIcons.telegram,
      url: StringConst.TELEGRAMLink,
    ),
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUBLink,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_INLink,
    ),
    SocialData(
      name: StringConst.FACEBOOK,
      iconData: FontAwesomeIcons.facebook,
      url: StringConst.FacebookLink,
    ),
  ];

  static List<SocialData> socialData2 = [
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_INLink,
    ),
    SocialData(
      name: StringConst.FACEBOOK,
      iconData: FontAwesomeIcons.twitter,
      url: StringConst.FacebookLink,
    ),
    SocialData(
      name: StringConst.WHATSAPP,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.WhatsappLink,
    ),
    SocialData(
      name: StringConst.TELEGRAM,
      iconData: FontAwesomeIcons.telegram,
      url: StringConst.TELEGRAMLink,
    ),
  ];

  static List<ProjectItemData> recentWorks = [
    Projects.NIMBUS,
    Projects.DROP,
    Projects.ROAM,
    Projects.LOGIN_CATALOG,
    Projects.FOODY_BITE,
    Projects.ALRAID,
  ];

  static List<ProjectItemData> projects = [
    Projects.NIMBUS,
    Projects.DROP,
    Projects.ROAM,
    Projects.LOGIN_CATALOG,
    Projects.FOODY_BITE,
    Projects.ALRAID,
  ];

  static List<NoteWorthyProjectDetails> noteworthyProjects = [];

  static List<ExperienceData> experienceData = [
    ExperienceData(
      company: StringConst.COMPANY_1,
      position: StringConst.POSITION_1,
      roles: [
        StringConst.COMPANY_1_ROLE,
      ],
      location: StringConst.LOCATION_1,
      duration: StringConst.DURATION_1,
    ),
    ExperienceData(
      company: StringConst.COMPANY_2,
      position: StringConst.POSITION_2,
      roles: [
        StringConst.COMPANY_2_ROLE_1,
      ],
      location: StringConst.LOCATION_2,
      duration: StringConst.DURATION_2,
    ),
  ];
}

class Projects {
  static ProjectItemData ALRAID = ProjectItemData(
    title: StringConst.PORTFOLIO_SITE_V2,
    subtitle: StringConst.PORTFOLIO_SITE_V2_SUBTITLE,
    platform: StringConst.PORTFOLIO_SITE_V2_PLATFORM,
    primaryColor: AppColors.drop,
    image: ImagePath.DROP_COVER,
    category: StringConst.PORTFOLIO_SITE_V2_CATEGORY,
    designer: StringConst.PORTFOLIO_SITE_V2_DESIGNER,
    coverUrl: ImagePath.DROP_COVER,
    navTitleColor: AppColors.dropNavTitle,
    navSelectedTitleColor: AppColors.dropSelectedNavTitle,
    appLogoColor: AppColors.dropAppLogo,
    projectAssets: [
      ImagePath.DROP_COVER,
    ],
    portfolioDescription: StringConst.PORTFOLIO_SITE_V2_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.PORTFOLIO_SITE_V2_GITHUB_URL,
  );
  static ProjectItemData DROP = ProjectItemData(
    title: StringConst.DROP,
    subtitle: StringConst.DROP,
    platform: StringConst.DROP_PLATFORM,
    primaryColor: AppColors.drop,
    image: ImagePath.DROP_COVER,
    category: StringConst.DROP_CATEGORY,
    designer: StringConst.DROP_DESIGNER,
    coverUrl: ImagePath.DROP_COVER,
    navTitleColor: AppColors.dropNavTitle,
    navSelectedTitleColor: AppColors.dropSelectedNavTitle,
    appLogoColor: AppColors.dropAppLogo,
    projectAssets: [
      ImagePath.DROP_DESC,
      ImagePath.DROP_FLOW_CHART,
      ImagePath.DROP_WIREFRAMES,
      ImagePath.DROP_MINIMAL_DESIGN,
      ImagePath.DROP_EASY_ACCESS,
      ImagePath.DROP_SIMPLE,
      ImagePath.DROP_THANKS,
    ],
    portfolioDescription: StringConst.DROP_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.DROP_GITHUB_URL,
    playStoreUrl: StringConst.DROP_PLAYSTORE_URL,
  );
  static ProjectItemData ROAM = ProjectItemData(
    title: StringConst.ROAM,
    subtitle: StringConst.ROAM,
    primaryColor: AppColors.roam,
    category: StringConst.ROAM_CATEGORY,
    designer: StringConst.ROAM_DESIGNER,
    platform: StringConst.ROAM_PLATFORM,
    image: ImagePath.ROAM_COVER,
    coverUrl: ImagePath.ROAM_COVER,
    navTitleColor: AppColors.roamNavTitle,
    navSelectedTitleColor: AppColors.roamSelectedNavTitle,
    appLogoColor: AppColors.roamAppLogo,
    projectAssets: [
      ImagePath.ROAM_OVERALL,
      ImagePath.ROAM_ONBOARDING,
      ImagePath.ROAM_HOME,
      ImagePath.ROAM_EXPLORE,
      ImagePath.ROAM_PROFILE,
      ImagePath.ROAM_FLOW_CHART,
      ImagePath.ROAM_WIREFRAMES_1,
      ImagePath.ROAM_WIREFRAMES_2,
      ImagePath.ROAM_WIREFRAMES_3,
    ],
    portfolioDescription: StringConst.ROAM_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.ROAM_GITHUB_URL,
    playStoreUrl: StringConst.ROAM_PLAYSTORE_URL,
  );
  static ProjectItemData LOGIN_CATALOG = ProjectItemData(
    title: StringConst.LOGIN_CATALOG,
    primaryColor: AppColors.login_catalog,
    subtitle: StringConst.LOGIN_CATALOG,
    category: StringConst.LOGIN_CATALOG_CATEGORY,
    platform: StringConst.LOGIN_CATALOG_PLATFORM,
    image: ImagePath.LOGIN_CATALOG_COVER,
    coverUrl: ImagePath.LOGIN_CATALOG_COVER,
    portfolioDescription: StringConst.LOGIN_CATALOG_DETAIL,
    navTitleColor: AppColors.loginCatalogNavTitle,
    navSelectedTitleColor: AppColors.loginCatalogSelectedNavTitle,
    appLogoColor: AppColors.loginCatalogAppLogo,
    projectAssets: [
      ImagePath.LOGIN_DESIGN_4,
      ImagePath.LOGIN_DESIGN_5,
      ImagePath.LOGIN_DESIGN_7,
      ImagePath.LOGIN_DESIGN_8,
      ImagePath.LOGIN_DESIGN_9,
    ],
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.LOGIN_CATALOG_GITHUB_URL,
    playStoreUrl: StringConst.LOGIN_CATALOG_PLAYSTORE_URL,
  );
  static ProjectItemData FOODY_BITE = ProjectItemData(
    title: StringConst.FOODY_BITE,
    subtitle: StringConst.FOODY_BITE_SUBTITLE,
    category: StringConst.FOODY_BITE_CATEGORY,
    designer: StringConst.FOODY_BITE_DESIGNER,
    primaryColor: AppColors.foodybite,
    platform: StringConst.FOODY_BITE_PLATFORM,
    image: ImagePath.FOODY_BITE_COVER,
    coverUrl: ImagePath.FOODY_BITE_COVER,
    navTitleColor: AppColors.foodybiteNavTitle,
    navSelectedTitleColor: AppColors.foodybiteSelectedNavTitle,
    appLogoColor: AppColors.foodybiteAppLogo,
    projectAssets: [
      ImagePath.FOODY_BITE_HOME,
      ImagePath.FOODY_BITE_STARTING_FLOW,
      ImagePath.FOODY_BITE_HOME_FLOW,
      ImagePath.FOODY_BITE_REVIEW_FLOW,
      ImagePath.FOODY_BITE_TYPOGRAPHY,
    ],
    portfolioDescription: StringConst.FOODY_BITE_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.FOODY_BITE_GITHUB_URL,
    playStoreUrl: StringConst.FOODY_BITE_PLAYSTORE_URL,
  );
  static ProjectItemData NIMBUS = ProjectItemData(
    title: StringConst.NIMBUS,
    subtitle: StringConst.NIMBUS,
    primaryColor: AppColors.nimbus,
    platform: StringConst.NIMBUS_PLATFORM,
    category: StringConst.NIMBUS_CATEGORY,
    designer: StringConst.NIMBUS_DESIGNER,
    image: ImagePath.NIMBUS_COVER,
    coverUrl: ImagePath.NIMBUS_COVER,
    navTitleColor: AppColors.nimbusNavTitle,
    navSelectedTitleColor: AppColors.nimbusSelectedNavTitle,
    projectAssets: [
      ImagePath.NIMBUS,
    ],
    portfolioDescription: StringConst.NIMBUS_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    isLive: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.NIMBUS_GITHUB_URL,
    webUrl: StringConst.NIMBUS_WEB_URL,
  );
}
