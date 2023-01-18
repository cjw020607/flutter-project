import 'package:flutter/material.dart';
import 'dart:math';
//import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice game'),
      ),
      body: Center(
        child: Column(
          //세로축 주축정렬
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                //가로축 주축정렬
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image(
                  //   image: AssetImage('image/dice1.png'),
                  //   width: 300.0,
                  // )
                  //간결하게 이미지 가져옴
                  //이미지를 끝까지 배치
                  //flex: 요소의 공간배치 범위 지정
                  Expanded(
                      // flex: 2,
                      child: Image.asset('image/dice$leftDice.png')),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                      //flex: 1,
                      child: Image.asset('image/dice$rightDice.png')),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            SizedBox(
              width: 100.0,
              height: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 50.0,
                ),
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                    rightDice = Random().nextInt(6) + 1;
                  });
                  //showToast("Left dice: {$leftDice}, Right dice: {$rightDice}");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// void showToast(String message) {
//   Fluttertoast.showToast(
//       msg: message,
//       backgroundColor: Colors.white,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM);
// }
