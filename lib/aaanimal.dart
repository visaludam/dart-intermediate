class Aaanimal{
  static int _counter = 0;

  Aaanimal(){
    _counter++;
    print('There are ${_counter} of us');
  }

  static void speak(){
    print('speaking');
    run();
  }

  static void run(){
    print('running');
  }
}