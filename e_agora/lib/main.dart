import 'package:e_agora/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'E agora?',
        theme: ThemeData(
            accentColor: Colors.cyan[800],
            primaryColor: Colors.white,
            hintColor: Colors.black,
            appBarTheme: AppBarTheme(
                color: Colors.blue[400],
                textTheme: TextTheme(
                    title: TextStyle(color: Colors.white, fontSize: 20)),
                iconTheme: IconThemeData(color: Colors.white))),
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}
