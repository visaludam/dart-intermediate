import 'package:intermediatee/animal.dart';
import 'package:intermediatee/dog.dart';
import 'package:intermediatee/intermediatee.dart' as mycode;
import 'package:intermediatee/myclass.dart';
import 'package:intermediatee/animal.dart';
import 'package:intermediatee/dog.dart';
import 'package:intermediatee/animall.dart';
import 'package:intermediatee/animalll.dart';
import 'package:intermediatee/aanimal.dart';
import 'package:intermediatee/aaanimal.dart';
import 'package:intermediatee/feline.dart';
import 'package:intermediatee/monster.dart';
import 'package:intermediatee/manager.dart';
import 'package:intermediatee/racecar.dart';
import 'package:intermediatee/counter.dart';

import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'dart:io';

void main(List<String> arguments) {

/*
  mycode.sayHello();

  //Convert
  String myvalue = 'Hello World';
  var ebytes = utf8.encode(myvalue);
  String encoded = base64.encode(ebytes);
  print('Encoded: ${encoded}');

  var dbytes = base64.decode(encoded);
  String decoded = utf8.decode(dbytes);
  print('Decoded: ${decoded}');

  //More imports
  var url = Uri.parse('http://www.voidrealms.com');
  http.get(url).then((response) {
    print('Response status code: ${response.statusCode}');
    print('Response body: ${response.body}');
  });

  //Create an instance of the class
  MyClass nine = new MyClass();
  nine.sayHello('Bryan');
  print(mycode.calculate());
*/

  //Class Constructions
  Animal cat = new Animal('bob');
  Animal dog = new Animal('frank');
  cat.sayHello();
  dog.sayHello();

  //this keyword
  Dog bob = new Dog(6, 'Bob');
  print('${bob.name} is ${bob.ageInDogYears()} dog years old');

  //Scope
  Animall catt = new Animall('fluffy');
  for(int i = 0; i < 10; i++){
    print(i);
    if(i < 8){
      // int i = 5; //valid but causes issues
      if(i < 4){
        print('i is < 8 and > 4');
      }
    }
  }

  Animalll caat = new Animalll('fluffy', 16, 'Short Hair');
  caat.breed = 'mixed';
  // caat._name = 'muffin';
  // caat._display('hello');


  caat.sayHello();
  caat.saySomething('meow');

  //Getters and Setters
  Aanimal doog = new Aanimal('Rango', 6);
  doog.name = 'fiddo'; //setter
  print(doog.name); //getter

  print('Before setter ${doog.age}');
  doog.age = 4;
  print('After setter ${doog.age}');

  //Static Members
  Aaanimal ccat = new Aaanimal();
  Aaanimal ddog = new Aaanimal();
  Aaanimal bbird = new Aaanimal();
  Aaanimal ffish = new Aaanimal();

  Aaanimal.run();

  //Inheritance
  Feline caaat = new Feline();
  caaat.breath();
  caaat.test();

  //Mixins
  Monster ugly = new Monster();
  ugly.test();

  //Interfaces
  Manager bbob = new Manager();
  bbob.test();

  //Abstraction
  RaceCar rc = new RaceCar();
  rc.honk();

  //Generic
  List<int> numbers = <int>[];
  numbers.addAll([1,2,3,4]);
  print(numbers);

  List<String> strings = <String>[];
  strings.addAll(['a', 'b', 'c', 'd']);
  print(strings);

  addNumbers<int>(1, 2);
  addNumbers<double>(1.0, 2.09);

  Counter<double> doubles = Counter<double>();
  doubles.addAll([1, 0,2,2,3,6]);
  doubles.total();

  Counter<int> ints = Counter<int>();
  ints.addAll([1,2,3]);
  ints.total();

  //Sync
  String path = '/';
  Directory dir = new Directory(path);
  if (dir.existsSync()){
    print('exists');
  }else{
    print('no found');
  }

  //System Temp Directory
  Directory dirr = Directory.systemTemp.createTempSync();
  print(dirr.path);

  if(dirr.existsSync()){
    print('Removing ${dirr.path}');
    dirr.deleteSync();
  }else{
    print('Could not found ${dirr.path}');
  }

  //Listing items in the directory
  Directory ddir = Directory.current;
  print(ddir.path);

  List<FileSystemEntity> list = ddir.listSync(recursive: true);
  print('Entities in list: ${list.length}');

  list.forEach((FileSystemEntity value) {
    FileStat stat = value.statSync();
    print('Path: ${value.path}');
    print('Type: ${stat.type}');
    print('Changed: ${stat.changed}');
    print('Modified: ${stat.modified}');
    print('Accessed: ${stat.accessed}');
    print('Mode: ${stat.mode}');
    print('Size: ${stat.size}');
  });

  //Accessing file
  Directory diir = Directory.current;
  print(dir.path);

  File file = new File(dir.path + 'myfile.txt');
  writeFile(file);
  readFile(file);
}

//Simple Example
// void add<T>(T a, T b){
//   print(b + a);
// }

//More Complex
void addNumbers<T extends num>(T a, T b){
  print(a + b);
}

// T add<T extends num>(T value, List<T> items) {
//   T ret = value;
//   items.forEach((value) {
//     ret = value + ret;
//   });
//
//   return ret;
// }

void writeFile(File file){
  RandomAccessFile raf = file.openSync(mode: FileMode.append);
  raf.writeStringSync('Hello World!\r\nHow are you today?');
  raf.flushSync();
  raf.closeSync();
}

void readFile(File file){
  if(!file.existsSync()){
    print('File does not exist');
    return;
  }
  print('Reading String ....');
  print(file.readAsStringSync());

  print('Reading bytes ...');
  List values = file.readAsBytesSync();
  values.forEach((value) => print(value));

}





