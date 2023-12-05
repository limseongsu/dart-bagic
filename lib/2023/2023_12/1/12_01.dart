
class Sword {

  String name;
  int damage;

  Sword({
    required this.name,
    required this.damage,
  });
//named argument constructor
  // Sword({required this.name,required  this.damage});

}

void main() {

  Sword fireSword = Sword(name: 'fire', damage: 10);
   final ice = fireSword;
  ice.name = "ice";
print (fireSword.name);

}