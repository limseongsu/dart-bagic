import 'package:dart_bagic/2023/2023_12/4/wand.dart';
import 'package:dart_bagic/2023/2023_12/4/wizard.dart';

void main() {

  List<String> names = ['wa', '마법사'];
  double wandPower = 0.5;
  List<int> points = [-1, 0];


  Wand wand = Wand(name: names[0], power: wandPower);
  Wizard wizard = Wizard(name: names[1], hp: points[0], mp: points[1], wand: wand);



}