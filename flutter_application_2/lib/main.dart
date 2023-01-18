import 'package:flutter/material.dart';
import 'dice.dart';

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
  bool emailField = true;
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

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
      body: Builder(
        builder: (context) {
          return GestureDetector(
            //onTap: 버튼 외에도 다양한 이벤트 구현
            onTap: () {
              //빈 공간을 탭하면 키보드가 사라짐
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
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
                                labelStyle: TextStyle(
                                    color: Colors.teal, fontSize: 15.0))),
                        //container는 child 하나밖에 가질 수 없으므로 column 사용
                        child: Container(
                          //끝에서 거리 떨어뜨리기
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              //emailfiled값이 true일 때
                              if (emailField)
                                TextField(
                                  key: ValueKey(1),
                                  //시작부터 키보드 자동으로 올라옴
                                  //autofocus: true,
                                  //controller: controller,
                                  decoration: InputDecoration(
                                    labelText: 'Enter "dice"',
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              TextField(
                                key: ValueKey(2),
                                //controller: controller2,
                                decoration: InputDecoration(
                                  labelText: 'Enter Password',
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: false,
                              ),
                              SizedBox(height: 40.0),
                              ButtonTheme(
                                  minWidth: 100.0,
                                  height: 50.0,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.purple,
                                        minimumSize: Size(150, 50)),
                                    child: Icon(
                                      Icons.visibility_off,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        emailField = false;
                                      });
                                    },
                                  )),
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      '로그인 정보를 다시 확인하세요',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar2(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      '비밀번호가 일치하지 않습니다',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar3(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      'dice의 철자를 확인하세요',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}
