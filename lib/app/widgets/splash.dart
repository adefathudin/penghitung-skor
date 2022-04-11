import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset("assets/images/logo.png"),
              ),
              Align(
                alignment: Alignment(0.0, 0.9),
                child: Text("by adefathudin.com")
              )
            ],
          ),
        ),
      ),
    );
  }
}