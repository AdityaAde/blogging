import 'package:flutter/material.dart';
import 'package:designflutterapp/post.dart';
import 'package:designflutterapp/timeline.dart';
import 'package:designflutterapp/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/second': (context) => Halamankedua(),
        '/third': (context) => Timeline()
      },
      debugShowCheckedModeBanner: false,
      home: Myhomepage(),
    );
  }
}
