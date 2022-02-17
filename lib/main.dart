import 'package:flutter/material.dart';
import 'package:prefdemo/pages/home_page.dart';
import 'package:prefdemo/pages/login_page.dart';
import 'package:prefdemo/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogInPage(),
      routes:{
        HomePage.id:(context)=>HomePage(),
        LogInPage.id:(context)=>LogInPage(),
        SignupPage.id:(context)=>SignupPage(),
      },
    );
  }
}
