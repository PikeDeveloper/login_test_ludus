import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_test/screens/home/home.dart';

import 'constants.dart';
import 'screens/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      initialRoute: "/login",
      getPages: [
        GetPage(name: "/login", page: () => LoginScreen()),
        GetPage(name: "/home", page: () => HomeScreen()),
      ],
    );
  }
}
