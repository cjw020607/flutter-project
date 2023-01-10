import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ScreenA'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text('Go to ScreenB'),
                onPressed: () {
                  //stringA의 context
                  Navigator.pushNamed(context, '/b');
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text('Go to ScreenC'),
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                },
              ),
            ],
          ),
        ));
  }
}
