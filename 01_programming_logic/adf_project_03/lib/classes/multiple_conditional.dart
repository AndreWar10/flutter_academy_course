import 'dart:io';

void main() {
  print('Insert num1');
  var num1Input = stdin.readLineSync() as String;
  print('Insert num1');
  var num2Input = stdin.readLineSync() as String;

  try {
    int num1 = int.parse(num1Input);
    int num2 = int.parse(num2Input);

    if (num1 != num2) {
      if (num1 > num2) {
        print('num1 is bigger then num2');
      } else {
        print('num2 is bigger then num1');
      }
    } else {
      print('num1 & num2 are equals');
    }
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}
