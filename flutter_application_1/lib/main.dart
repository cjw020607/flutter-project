import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //runApp() 안에 위젯

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charactor card',
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANTO'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),

      //가로축 정렬
      body: Center(
        child: Column(
            //세로축 정렬
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ]),
      ),
    );
  }
}
