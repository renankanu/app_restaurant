import 'package:app_restaurant/config.dart';
import 'package:flutter/material.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({@required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env,
            color: env == Environments.HML ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}
