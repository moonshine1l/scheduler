import 'package:flutter/material.dart';
import 'package:scheduler/homepage.dart';
import 'package:scheduler/teacher.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context) => const HomePage(),
        'teacher': (context) => TeacherPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
    );
  }
}