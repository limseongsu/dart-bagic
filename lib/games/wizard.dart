

import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand? _wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    required Wand? wand,
  })  : _name = name,
        _hp = hp,
        _mp = mp,
        _wand = wand;

  String get name => _name;

  int get hp => _hp;

  int get mp => _mp;

  Wand? get wand => _wand;

  set name(String name) => setName(name);

  set hp(int hp) => setHp(hp);

  set mp(int mp) => setMp(mp);

  set wand(Wand? wand) => setWand(wand);

  void setName(String name) {
    if (name.length >= 3) {
      _name = name;
    } else {
      throw Exception("이름이 3자 미만 입니다.");
    }
  }

  void setHp(int hp) {
    if (hp < 0) {
      _hp = 0;
    } else {
      _hp = hp;
    }
  }

  void setMp(int mp) {
    if (mp > 0) {
      _mp = mp;
    } else {
      throw Exception("mp는 0이상 이어야 합니다.");
    }
  }

  void setWand(Wand? wand) {
    if (wand != null) {
      _wand = wand;
    } else {
      throw Exception("wand는 null이 아닙니다.");
    }
  }
}
