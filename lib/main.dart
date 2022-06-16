import 'package:flutter/material.dart';
// import 'package:masti_go/home_page.dart';
import 'package:masti_go/login_page.dart';
// import 'package:masti_go/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MastiGo",
      home: LoginPage(),
    );
  }
}
