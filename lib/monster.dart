import 'feline.dart';
import 'dragon.dart';
import 'ghost.dart';

class Monster extends Feline with Dragon, Ghost{

  bool glowInDark = true;

  @override
  void test(){
    print('Test called in Monster');
    super.test();
  }
}
