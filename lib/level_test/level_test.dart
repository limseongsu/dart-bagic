class LevelTest {
//  주어진 문자열이 회문(palindrome)인지 확인하는 함수를 작성하세요. 회문이란, 거꾸로 읽어도 원래와 같은 단어나 문장을 말합니다.
//  예시: “racecar”는 회문입니다. “hello”는 회문이 아닙니다.
//  주어진 정수 배열 또는 리스트에서 가장 큰 두 수를 찾아 더한 값을 반환하는 함수를 작성하세요.
//  예시: [1, 2, 5, 3, 9, 8] 이 주어졌을 때, 가장 큰 두 수는 9와 8이므로 9 + 8 = 17이 반환되어야 합니다.
//  양의 정수 n이 주어졌을 때, n의 팩토리얼(factorial) 값을 반환하는 함수를 작성하세요. 팩토리얼은 1부터 n까지의 모든 양의 정수를 곱한 값입니다.
//  예시: n이 5일 때, 5의 팩토리얼 값은 1 x 2 x 3 x 4 x 5 = 120이므로, 함수는 120을 반환해야 합니다.

  bool question1(String text) {
    print("input : $text");
    String reverseText = text.split("").reversed.join();
    print("reverse : $reverseText");
    if(text == reverseText) {
      return true;
    }else {
      return false;
    }
  }

  bool question1_2(String text) {
    print("input : $text");
    String reverseText = "";
    // length 는 0 1 2 3  가 아닌 1 2 3 4
    print("문자열의 길이 ? : ${text.length}");
    print("문자열의 첫번째는 ? : ${text[0]}");
    /*
    리스트 혹은 문자열의 첫번째는 0번으로 시작함으로 밑에 반복문에서 -1 값을 해야 해당 리스트의 n번째 순서를 알 수 있다.
    */
    for(int i = text.length - 1; i >= 0; i--) {
      reverseText += text[i];
    }
    print("reverse : $reverseText");
    if(text == reverseText) {
      return true;
    }else {
      return false;
    }
  }




  void question3(int any) {
    int value = 1;
    while(any > 0) {
      value = any * value;
      any -= 1;
    }
    print("max : $value");
  }



}
