import 'mamal.dart';

class Feline extends Mamal {
  bool hasClaws = true;

  void grow() => print('grrrrrr');

  @override
  void test() {
    print('Testing is feline');
    super.test();
  }
}