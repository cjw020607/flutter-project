import 'package:flutter/material.dart';
import 'package:flutter_application_1/ScreenA.dart';
import 'package:flutter_application_1/ScreenB.dart';
import 'package:flutter_application_1/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //첫 route의 이름: '/'
      initialRoute: '/',
      routes: {
        //'/'가 불려지면 value값인 ScreenA가 빌드 됨
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC()
      },
    );
  }
}
