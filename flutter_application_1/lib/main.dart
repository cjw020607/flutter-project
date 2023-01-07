import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //runApp() 안에 위젯

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First app'),
        ),
        body: Center(
          child: Column(
            children: [Text('Hello'), Text('Hello'), Text('Hello')],
          ),
        ));
  }
}
