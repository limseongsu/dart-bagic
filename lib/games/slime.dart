import 'hero.dart';

void main() {
  Hero hero = Hero('임성수', 100);
  PoisonSlime poisonSlime1 = PoisonSlime('A');
  poisonSlime1.attack(hero);
}

class Slime {
  Slime(this.suffix);

  int hp = 50;
  final String suffix;


  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다.');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  PoisonSlime(super.suffix);

  int _poisonAttackCount = 5;

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (_poisonAttackCount > 0) {
      print('추가로, 독 포자를 살포했다!');
      final damage = (hero.hp / 5).floor(); // // 소수점 버림 *hero 의 hp는 integer
      hero.hp -= damage;
      print('$damage포인트의 데미지');
      _poisonAttackCount--;
    }
  }
}
