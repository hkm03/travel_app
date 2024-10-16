import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/routes/app_route.dart';
import 'package:travel_app/routes/route_names.dart';
import 'package:travel_app/utils/theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: RouteNames.splashScreen,
    );
  }
}
