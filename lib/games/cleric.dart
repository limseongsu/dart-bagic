import 'dart:math';




void main() {
  // final cleric1 = Cleric('아서스', hp: 40, mp: 5);
  // final cleric2 = Cleric('아서스', hp: 35);
  // final cleric3 = Cleric('아서스');
  // final cleric4 = Cleric(); 안됨

}

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  static const int maxHp = 50;
  static const int maxMp = 10;

  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp});

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

