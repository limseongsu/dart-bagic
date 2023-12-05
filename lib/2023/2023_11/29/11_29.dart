//슬라임 게임

void main() {
  Game game = Game();
  game.versus();
}



class Game {

  Character _hero = Character("Hero", 100, 10, 1);
  Character _slime = Character("Slime", 10, 5, 5);

  void characterStatus(Character character) {
    print(
        "${character.name} - health: ${character.health}, Attack: ${character.attack}, Defense: ${character.defence}");
  }

  void versus() {
    characterStatus(_hero);
    characterStatus(_slime);
    _hero = _slime.hit(_slime, _hero);
    _slime = _hero.hit(_hero, _slime);

    if (_slime.health > 0) {
      versus();
    }
  }
}


class Character {
  String name;
  int health;
  int attack;
  int defence;

  Character(this.name, this.health, this.attack, this.defence);

  Character hit(Character attacker, Character defender) {
    if (attacker.name == "Hero") // 원래는 unique 한 value or enum type
    {
      print("${attacker.name} attacks the ${defender.name}!");
    } else {
      print("${attacker.name} Attacks!");
    }

    int damage = attacker.attack - defender.defence;
    print("${defender.name} takes $damage damage.");
    defender.health = defender.health - damage;
    if (defender.health <= 0) {
      print("${defender.name} is Defeated! ${attacker.name} Win!");
    }
    return defender;
  }
}


