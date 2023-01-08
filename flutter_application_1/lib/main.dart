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
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Center(
          //TextButton 입체감 없이
          child: TextButton(
            child: Text(
              'Show me',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
                //primary: Colors.red,
                backgroundColor: Colors.red),
            onPressed: () {
              //something.of(context): 주어진 context에서 위로 올라가면서 가장 가까운 something 찾아서 반환
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Hellow'),
              ));
            },
          ),
        ));
  }
}
