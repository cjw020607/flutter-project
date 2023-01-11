import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            Center(
              child: Image(
                image: AssetImage('image/chef.gif'),
                width: 170.0,
                height: 190.0,
              ),
            ),
            //정보 입력 받을 때 주로 form 사용
            Form(
              child: Theme(
                  data: ThemeData(
                      //선
                      primaryColor: Colors.teal,
                      //글자
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle:
                              TextStyle(color: Colors.teal, fontSize: 15.0))),
                  //container는 child 하나밖에 가질 수 없으므로 column 사용
                  child: Container(
                    //끝에서 거리 떨어뜨리기
                    padding: EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter "dice"',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Password',
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        SizedBox(height: 40.0),
                        ButtonTheme(
                            minWidth: 100.0,
                            height: 50.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orangeAccent),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              onPressed: () {},
                            )),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
