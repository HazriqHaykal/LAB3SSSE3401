import 'package:flutter/material.dart';
import 'package:flutter_application_ticket_app3/base/bottom_nav_bar.dart';

void main() {

  runApp(const MyApp());// entry point
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 153, 110, 227)),
      ),
      home:  BottomNavBar()
    );
 
  }
}
