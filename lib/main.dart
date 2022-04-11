import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:penghitung_skor/app/modules/home/views/home_view.dart';

import 'app/routes/app_pages.dart';
import 'app/widgets/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
            title: 'Application',
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.waiting){
          return SplashScreen();
        } else {
          return GetMaterialApp(
            title: 'Application',
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }
      },
    );
  }
}