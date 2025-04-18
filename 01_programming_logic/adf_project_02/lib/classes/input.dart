import 'dart:io';

void main() {

  print('What`s your name?');
  var name = stdin.readLineSync();

  print('How old are you?');
  var age = stdin.readLineSync();
    
  print('Hi $name! Your age is: $age');
  print('Thanks :)');
}