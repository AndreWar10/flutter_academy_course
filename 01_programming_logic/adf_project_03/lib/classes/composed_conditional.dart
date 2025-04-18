import 'dart:io';

void main() {

  print('What`s your name?');
  var name = stdin.readLineSync() as String;

  print('How old are you?');
  var ageInput = stdin.readLineSync() as String;
  int age = int.parse(ageInput);

  if(age >= 18) {
    print('$name is of legal age!');
  } else {
    print('$name is`n of legal age ;(');
  }
}