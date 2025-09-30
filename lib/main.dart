import 'package:evently_online_sat/config/theme/theme_manager.dart';
import 'package:evently_online_sat/core/routes_manager/app_routes.dart';
import 'package:evently_online_sat/core/routes_manager/router.dart';
import 'package:evently_online_sat/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const Evently());
}

class Evently extends StatelessWidget {
  const Evently({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: Size(393, 841),
      splitScreenMode: true,
      minTextAdapt: true,

      builder: (context, child) => MaterialApp(

        debugShowCheckedModeBanner: false,

        onGenerateRoute: RoutesManger.router,
        initialRoute: AppRoutes.mainLayout,
        theme: ThemeManager.light,
        darkTheme: ThemeManager.dark,
        themeMode: ThemeMode.light,
        locale: Locale("en"),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: [
          Locale("en"),
          Locale("ar")
        ],
      ),

    );
  }
}
