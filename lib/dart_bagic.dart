import 'package:dart_bagic/level_test/level_test.dart';
import '11/11_28.dart';


Challenge _challenge = Challenge();

void main() {

  
  _challenge.clapGame();
}



















// void main() {
//   // 주어진 문자열에서 문자열과 숫자 2개를 스페이스로 구분하여 해당 하는 값들을 각 문자열 리스트와 숫자 리스트에 담기
//   String input = "안녕하세요 20 30";
//   // 입력받은 문자열과 숫자를 공백을 기준으로 분리
//   List<String> inputList = input.split(' ');
//
//   List<String> stringList = [];
//   List<int> integerList = [];
//
//   // 분리된 값들을 추출하여 사용
//   for (String input in inputList) {
//     int? integer = int.tryParse(input);
//     if (integer != null) {
//       integerList.add(integer);
//     } else {
//       stringList.add(input);
//     }
//   }
//   print("문자열 리스트 : $stringList");
//   print("숫자 리스트 : $integerList");
// }
//
// void example() {
//   List<Map<String, dynamic>> mapList = [];
//   mapList.add({"String": 12345});
// }
