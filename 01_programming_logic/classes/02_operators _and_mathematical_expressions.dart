void main() {

  // Sum (+)
  // Subtraction (-)
  // Multiplication (*)
  // Division (/)
  // Rest of division(%)
  // Precedence ()

  int num1 = 10;
  int num2 = 3;

  int sum = num1 + num2;
  int subtraction = num1 - num2;
  int multiplication = num1 * num2;
  double division = num1 / num2;
  int rest = num1 % num2;
  double precedence = num1 / (num2 + num1);

  print('Sum: $sum');
  print('Subtraction: $subtraction');
  print('Multiplication: $multiplication');
  print('Division: $division');
  print('Rest: $rest');
  print('Precedence: $precedence');
}
