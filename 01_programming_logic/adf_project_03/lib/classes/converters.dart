import 'dart:io';

void main() {

  // String age = '22';
  // print(int.parse(age) + 2);

  print('How old are you?');
  var age = stdin.readLineSync() as String;
  print(int.parse(age) + 2);

}