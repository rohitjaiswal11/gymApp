import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lbm_fitness/Views/Login/login.dart';
import 'package:lbm_fitness/Views/Meal_Schedule/meal_schedule.dart';
import 'package:lbm_fitness/Views/Splash/splash.dart';

import 'Views/Trainer/trainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor:
              Colors.black, // This sets the background color for the entire app
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: Colors.white), // Text color
            bodyMedium: TextStyle(color: Colors.white), // Text color
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
          bottomSheetTheme:
              BottomSheetThemeData(backgroundColor: Colors.black54)),
      home:
          // Meal_Schedule()
        // HorizontalWeekCalendarPackage(),
     // MyGridView()
 SplashSceeen(),
    );
  }
}
