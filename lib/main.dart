import 'package:flutter/material.dart';
//import 'package:attendance_tracker/pages/welcome_page.dart';
import 'package:attendance_tracker/pages/login_page.dart';
import 'package:attendance_tracker/pages/parents_login.dart';
//import 'package:attendance_tracker/widgets/text_field.dart';
  
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ParentsLogin(),
    );
  }
}
