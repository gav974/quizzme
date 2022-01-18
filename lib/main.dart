import 'package:flutter/material.dart';
import 'package:quizzme/vue/End_quizz_vue.dart';

import 'package:quizzme/vue/homescreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const pageQuizz()
      },

      //home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

