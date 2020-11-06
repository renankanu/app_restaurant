class Environments {
  static const String PRODUCTION = 'PROD';
  static const String HML = 'HML';
  static const String DEV = 'DEV';
}

class ConfigEnvironments {
  static final String _currentEnvironments = Environments.PRODUCTION;
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

  static Map<String, String> getEnvironments() {
    return _availableEnvironments.firstWhere(
      (d) => d['env'] == _currentEnvironments,
    );
  }
}
