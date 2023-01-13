import 'dart:io';

void main() {
  showData();
}

void showData() async {
  startTask();
  //실행이 끝날때까지 기다림
  String account = await accessData();
  fetchData(account);
}

void startTask() {
  String info1 = '요청수행 시작';
  print(info1);
}

//무조건 전 단계 실행 후 다음 단계로 넘어감
Future<String> accessData() async {
  String account;

  Duration time = Duration(seconds: 3);

  if (time.inSeconds > 2) {
    //Futre.delayed 실행이 끝날때까지 기다림
    await Future.delayed(time, () {
      account = '8,500만원';
      print(account);
    });
  } else {
    String info2 = '데이터를 가져왔습니다.';
    print(info2);
  }
  return account;
}

void fetchData(String account) {
  String info3 = '잔액은 $account 입니다.';
  print(info3);
}
