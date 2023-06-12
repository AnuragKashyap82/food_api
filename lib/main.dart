import 'package:flutter/material.dart';
import 'package:food_api/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Api',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
       primaryColor: Colors.white,
        textTheme:const TextTheme(
          bodyText2: TextStyle(color: Colors.white)
        )
      ),
      home:   HomePage(),
    );
  }
}

