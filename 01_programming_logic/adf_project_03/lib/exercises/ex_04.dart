import 'dart:io';
/*
https://gist.github.com/repoadf/c18cec3ccd696610846e564dd5f344db?_gl=1*uwaxhi*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NDkxMjY5OS4xMC4xLjE3NDQ5MTkwMjAuMC4wLjA.
Descrição da Atividade

Crie um programa que solicite o nome, a nota 1 e a nota 2 de um(a) aluno(a). 
Em seguida, o programa deve calcular a média aritmética e, se o(a) aluno(a) ficar com nota maior ou igual a 6.0, 
o programa deve mostrar a mensagem "APROVADO(A)". 
Se a nota for menor que 6.0, o programa deve apresentar a mensagem "EM RECUPERAÇÃO".
*/

void main() {

  const double minimumNote = 6.0;

  print('What`s your name?');
  final String nameStudent = stdin.readLineSync() as String;

  print('Enter note 1:');
  final String note1Input = stdin.readLineSync() as String;

  print('Enter note 2:');
  final String note2Input = stdin.readLineSync() as String;

  try {
    double note1 = double.parse(note1Input);
    double note2 = double.parse(note2Input);

    double calculateArithmeticMedian(List<double> notes) {
      double sumOfNotes = 0.0;

      for (double note in notes) {
        sumOfNotes += note;
      }

      return sumOfNotes / notes.length;
    }

    double arithmeticMedian = calculateArithmeticMedian([note1, note2]);
    print('$nameStudent, your median arithmetic is: $arithmeticMedian, you`re:');

    if(arithmeticMedian >= minimumNote) {
      print('APPROVED !!!');
    } else {
      print('RECOVERY !!!');
    }
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}