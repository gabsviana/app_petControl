import 'package:flutter/material.dart';
import 'package:simple_code/simple_code.dart';

import 'package:app_pet_control/Screens/splash/SplashScreen.dart';

void main() {
  runApp(
    MaterialApp(
      navigatorKey: SimpleCode.navigatorKey,
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    ),
  );
}
