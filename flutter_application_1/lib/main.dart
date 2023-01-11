import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//emutable(한번 생성되면 state가 변하지 않음) 속성 유지
class MyApp extends StatefulWidget {
  @override
  //stateless widget은 build method에서 생성한 객체 바로 반환
  //stateful widget는 createState method에서 생성한 객체를 반환
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

//mutable 속성 대신함
//state class는 generate type 가짐(State class에 generate type을 MyApp class로 지정하면 State class는  MyApp class type만 가짐)
class MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You have pushed the button this many times:"),
              Text(
                //dirty
                '$counter',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              //checkbox는 stateful widget
              Checkbox(
                value: false,
                onChanged: (bool? value) {},
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      //text는 stateless widget이므로 state 변화시키려면 build method를 호출해서 widget을 rebuild하는 방법밖에 없음
                      //setState method통해 플러터가 대신 build method 호출해줌
                      setState(() {
                        counter++;
                        print('$counter');
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        counter--;
                        print('$counter');
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
