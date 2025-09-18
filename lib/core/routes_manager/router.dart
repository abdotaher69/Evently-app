import 'package:evently_online_sat/core/routes_manager/app_routes.dart';
import 'package:evently_online_sat/features/authentication/login/login.dart';
import 'package:evently_online_sat/features/authentication/register/register.dart';
import 'package:evently_online_sat/features/onbording/on_barding_screen.dart';
import 'package:evently_online_sat/features/splach/splach_screen.dart';
import 'package:flutter/cupertino.dart';

class RoutesManger {
  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.register:
        {
          return CupertinoPageRoute(builder: (context) => Register());
        }
      case AppRoutes.login:
        {
          return CupertinoPageRoute(builder: (context) => Login());
        }
        case AppRoutes.splash: 
        {
          return CupertinoPageRoute(builder: (context) => Splach());
        }   
        case AppRoutes.onBoarding: 
        {
          return CupertinoPageRoute(builder: (context) => OnBarding());
        }
    }
    return null;
  }
}
