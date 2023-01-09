import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        //container는 최대한 많은 공간 차지하려고 함
        //child 가지게 될 경우 child 크기로 줄어듦 (container는 하나의 child만 가짐)
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          //margin: 위젯의 바깥쪽
          margin: EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 10,
          ),
          //padding: 위젯의 안쪽
          padding: EdgeInsets.all(40),
          child: Text('Hello'),
        ),
      ),
    );
  }
}
