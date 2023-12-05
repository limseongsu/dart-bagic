// 순한맛 1번문제
// a, b 두 숫자 중 더 큰 숫자를 구하시오. 두 수가 같을 경우 'eq'를 출력하시오.

import 'dart:math';

void question1(int a, int b) {
  if (a == b) {
    print('eq');
  } else if (a > b) {
    print(a);
  } else {
    print(b);
  }

  //or
  // if(a == b) {
  //   print('eq');
  // }
  // int greaterNumber = (a > b) ? a : b;
  // print(greaterNumber);
}

//---------------------------------------------------------------------------------------------------
void example() {
  List<int> intList = [1, 2, 3, 4, 5];
  for (int integer = 0; integer < intList.length; integer++) {
    //integer == 1, 2, 3, 4, 5 각 각
    print(integer);
  }
  for (int integer in intList) {
    //integer == 1, 2, 3, 4, 5 각 각
    print(integer);
  }
  intList.forEach((integer) {
    //integer == 1, 2, 3, 4, 5 각 각
    print(integer);
  });
  //람다식
  intList.forEach((integer) => print(integer)); //integer == 1, 2, 3, 4, 5 각 각
}

//---------------------------------------------------------------------------------------------------

class Food {
  String name; //이름
  int price; // 가격
  int amount = 5; //재고
  Food(this.name, this.price);
}

class VendingMachine {
  List<Food> foodList = [
    Food('chocolate', 500),
    Food('pepero', 600),
    Food('fanta', 1000),
    Food('cider', 1100)
  ];

  void start() {
    int money = 5000;
    String foodName = 'pepero';
    using(foodName, money);
  }

  void using(String foodName, int money) {
    nowState(foodList);
    for (int i = 0; i < foodList.length; i++) {
      if (foodList[i].name == foodName) {
        if (foodList[i].amount > 0) {
          int change = (money - foodList[i].price);
          // foodList[i].amount = foodList[i].amount -1;
          foodList[i].amount--;
          print(
              "[${foodList[i].name} 구매 성공] 가격: ${foodList[i].price}, 거스름돈: ${change}, 남은 수량: ${foodList[i].amount}");
        }
      }
    }
    nowState(foodList);
  }

  void nowState(List<Food> foodList) {
    print("===== 자판기 상태 =====");
    for (Food food in foodList) {
      print("${food.name} - 가격: ${food.price}원, 수량: ${food.amount}개 ");
    }
    print("====================");
  }
}

//---------------------------------------------------------------------------------------------------

void main() {
  Cleric cleric = Cleric('example');
  cleric.selfAid();
  int heal = cleric.pray(2);
  print("회복 된 MP 량: ${heal}, MP: ${cleric.mp}");
}


// 현실세계의 성직자 “클레릭" 를 표현하는 클래스 Cleric 를 작성 하시오.
// 속성이나 동작은 작성 할 필요 없습니다. (내용은 아무것도 작성하지 않아도 됨)

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  final maxHp = 50;
  final maxMp = 10;

  Cleric(this.name);

  void selfAid() {
    if (mp >= 5) {
      // mp = mp -5;
      mp -= 5;
      hp = maxHp;
      print("체력을 회복하였습니다.");
    } else {
      print("mp가 모자랍니다.");
    }
  }

  int pray(int seconds) {
    int heal = seconds + Random().nextInt(3);
    if (mp + heal > maxMp) {
      heal = maxMp - mp;
      mp = maxMp;
    } else {
      mp = mp + heal;
    }
    return heal;
  }
}
