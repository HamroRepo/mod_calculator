import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
              // fontSize: 45,
              ),
          bodyText2: TextStyle(fontSize: 45),
        ).apply(bodyColor: Colors.white),
        primaryColor: Colors.black,
        primarySwatch: Colors.grey,
      ),
      home: HomeScreen(),
    );
  }
}
