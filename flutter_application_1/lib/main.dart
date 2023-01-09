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
        backgroundColor: Colors.teal,
        body: SafeArea(
          //column은 세로축으로 가능한 모든 공간 다 차지함
          child: Center(
            child: Column(
              //mainAxisAlignment는 세로축 위치 설정 (세로축의 모든 공간을 차지함)
              // mainAxisAlignment: MainAxisAlignment.center,
              //-----------
              //mainAxisSize
              // mainAxisSize: MainAxisSize.min, //컨테티너의 필수 영역만큼으로 줄어듦
              //-----------
              //아래에서부터 위로 배치
              //verticalDirection: VerticalDirection.up,
              //------------
              //사이에 같은 간격으로 배치
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //-----------
              //상,중,하에 배치
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //--------
              //맨 오른쪽으로 정렬 (맨 아래에 container 추가)
              //crossAxisAlignment: CrossAxisAlignment.end,
              //-----------
              //가로 방향으로 최대한 확장(container의 width 따로 설정할 필요 없음)
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: Text('Container 1'),
                ),
                //container 사이의 간격 설정
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text('Container 2'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Text('Container 3'),
                ),
                //가시성 위해 height 지정
                Container(
                  width: double.infinity,
                  color: Colors.yellow,
                  height: 20,
                )
              ],
            ),
          ),
        ));
  }
}
