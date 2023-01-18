import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print('text button');
              },
              //길게 눌렀을 때
              onLongPress: () {
                print('text button~');
              },
              child: Text(
                'Text button',
                style: TextStyle(fontSize: 20.0),
              ),
              style: TextButton.styleFrom(
                //primary->foregroundColor
                primary: Colors.red,
                //backgroundColor: Colors.blue
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevated button');
              },
              child: Text('Elevated button'),
              style: ElevatedButton.styleFrom(
                  //elvatedbutton에서는 primary가 버튼 색, 그러나 backgroundColor가 생김
                  primary: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0),
            ),
            OutlinedButton(
                onPressed: () {
                  print('Outlined button');
                },
                child: Text('Outlined button'),
                style: OutlinedButton.styleFrom(
                    //primary->foregroundColor
                    primary: Colors.green,
                    side: BorderSide(color: Colors.black87, width: 2.0))),
            TextButton.icon(
              onPressed: () {
                print('Icon button');
              },
              icon: Icon(
                Icons.home,
                size: 30.0,
                //icon 색상 지정 안하면 button의 foregroundcolor(primary) 색에 따라 바뀜
                color: Colors.black87,
              ),
              label: Text('Go to home'),
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('Go to home');
              },
              icon: Icon(
                Icons.home,
              ),
              label: Text('Go to home'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, minimumSize: Size(200, 50)),
            ),
            OutlinedButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.home,
              ),
              label: Text('Go to home'),
              style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  //비활성화된 버튼 색 바꿈
                  onSurface: Colors.pink),
            ),
            //가로 방향으로 끝 정렬(공간 부족하면 세로 방향으로 정렬)
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("TextButton"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("ElevatedButton"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
