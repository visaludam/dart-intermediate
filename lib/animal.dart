class Animal{
  String _name = '';
  
  Animal(String name) {
    _name = name;
  }

  void sayHello() {
    if(_name.isEmpty){
      print('Hello');
    }else{
      print('Hello ${_name}, Nice to meet you');
    }
  }
}