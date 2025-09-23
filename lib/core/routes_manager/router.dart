import 'package:evently_online_sat/core/routes_manager/app_routes.dart';
import 'package:evently_online_sat/features/authentication/login/login.dart';
import 'package:evently_online_sat/features/authentication/register/register.dart';
import 'package:evently_online_sat/features/main_layout/main_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      case AppRoutes.mainLayout:
        {
          return CupertinoPageRoute(builder: (context) => MainLayout());
        }
    }
  }
}
