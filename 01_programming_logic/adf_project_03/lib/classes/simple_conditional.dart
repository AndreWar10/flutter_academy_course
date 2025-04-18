import 'dart:io';

void main() {

  // print('start program');

  // if(1 > 2) {
  //   print('1 is bigger than 2');
  // }

  // print('end program');

  print('What`s your name?');
  var name = stdin.readLineSync() as String;

  print('How old are you?');
  var ageInput = stdin.readLineSync() as String;
  int age = int.parse(ageInput);

  if(age >= 18) {
    print('$name is of legal age!');
  }

  if(age < 18) {
    print('$name is`n of legal age ;(');
  }
}