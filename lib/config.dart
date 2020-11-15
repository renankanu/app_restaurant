class Environments {
  static const String PRODUCTION = 'PROD';
  static const String HML = 'HML';
  static const String DEV = 'DEV';
}

class ConfigEnvironments {
  static final String _currentEnvironments = Environments.HML;
  static List<Map<String, String>> _availableEnvironments = [
    {
      'env': Environments.DEV,
      'url': '',
    },
    {
      'env': Environments.HML,
      'url': '',
    },
    {
      'env': Environments.PRODUCTION,
      'url': '',
    },
  ];

  static Map<String, String> getEnvironments(env) {
    return _availableEnvironments.firstWhere(
      (d) => d['env'] == env,
    );
  }
}
