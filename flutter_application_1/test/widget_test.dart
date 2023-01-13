import 'dart:io';

void main() {
  showData();
}

void showData() {
  startTask();
  accessData();
  fetchData();
}

void startTask() {
  String info1 = '요청수행 시작';
  print(info1);
}

void accessData() {
  //3초 지연
  // sleep(time);

  Duration time = Duration(seconds: 3);

  if (time.inSeconds > 2) {
    //accessData 지연되는동안 fetchData 먼저 프린트 됨
    Future.delayed(time, () {
      String info2 = '데이터에 처리 완료';
      print(info2);
    });
  } else {
    String info2 = '데이터를 가져왔습니다.';
    print(info2);
  }
}

void fetchData() {
  String info3 = '잔액은 8,500만원 입니다.';
  print(info3);
}
