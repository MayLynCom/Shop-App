import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop_Demo',
      theme: ThemeData(
        primaryColor: kTextColor,
      textTheme: const TextTheme(
      headline5: TextStyle(fontWeight: FontWeight.bold),
      )),
      home: const HomeScreen()
    );
  }
}
