import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:onboarding_screen/views/onbord_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: 
       MaterialApp(
        home: OnBoradScreen(),
        
      ),
    );
  }
}