import 'package:intermediatee/aaaanimal.dart';

import 'animal.dart';

class Mamal extends Aaaanimal {
  bool hasHair = true;
  bool hasBackbone = true;
  bool isWarmBlooded = true;

  void walk() => print('Walking');

  @override
  void test() {
    print('Testing is Mamal');
  }
}