import 'dart:io'; // 해당 부분을 import 해야 keyboard input 이 가능함


class KeyBoardInputExample {

  String input = stdin.readLineSync()!;


  void example(String input) {
    print("입력받은 값 : $input");
  }


}
