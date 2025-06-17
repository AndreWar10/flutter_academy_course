//Pattern Matching
import 'dart:io';

void main() {
print('Digite uma letra:');
String letra = stdin.readLineSync()!;

if (('aeiou').contains(letra)) {
print('A letra $letra é uma vogal.');
} else if (('bcdfghjklmnpqrstvwxyz').contains(letra)) {
print('A letra $letra não é uma vogal.');
} else {
print('Por favor, digite apenas uma letra.');
}
}