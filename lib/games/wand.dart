class Wand {
  String _name;
  double _power;

  Wand({
    required String name,
    required double power,
  })  : _power = power,
        _name = name {
    setName(name);
    setPower(power);
  }

  String get name => _name;

  double get power => _power;

  set name(String name) {
    setName(name);
  }

  set power(double power) {
    setPower(power);
  }

  void setName(String name) {
    if (name.length >= 3) {
      _name = name;
    } else {
      throw Exception("이름이 3자 미만 입니다.");
    }
  }

  void setPower(double power) {
    if (0.5 <= power && power <= 100.0) {
      _power = power;
    } else {
      throw Exception("파워가 혀용치가 아닙니다.");
    }
  }
}