import 'package:flutter/material.dart';
import 'package:flutter_application_ticket_app3/base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp()); //entry point
}

class MyApp extends StatelessWidget { //stateless widget something that never change
  const MyApp({super.key}); // A constant constructor that passes the key to the parent class (StatelessWidget)


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: BottomNavBar(),
    );
  }
}