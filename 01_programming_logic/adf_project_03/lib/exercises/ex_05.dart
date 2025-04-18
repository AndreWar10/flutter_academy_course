import 'dart:io';
/*
https://gist.github.com/repoadf/2bb4230db7924fd2b9005e79538e55d2?_gl=1*dv819o*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NDk0NzIwOC4xMS4xLjE3NDQ5NDcyMjIuMC4wLjA.

Descrição da Atividade
Altere o (Exercício 3). para que seja solicitada a nota da recuperação, somente se o(a) aluno(a) tiver ficado em recuperação. 
Em seguida, o programa deve verificar se essa nota da recuperação é maior ou igual a 5.0. Se for, o programa deve mostrar a mensagem 
"APROVADO(A)", caso contrário deve mostrar a mensagem "REPROVADO(A)".
*/

void main() {
  const double minimumNoteDefault = 6.0;
  const double minimumNoteRecovery = 5.0;

  print('What`s your name?');
  final String nameStudent = stdin.readLineSync() as String;

  print('Enter note 1:');
  final String note1Input = stdin.readLineSync() as String;

  print('Enter note 2:');
  final String note2Input = stdin.readLineSync() as String;

  try {
    double note1 = double.parse(note1Input);
    double note2 = double.parse(note2Input);

    double arithmeticMedian = calculateArithmeticMedian([note1, note2]);
    bool isApprovedInFirstTest = verifyIfStudentIsApproved(studentNote: arithmeticMedian, minumimNote: minimumNoteDefault);

    showStudentResult(nameStudent: nameStudent, note: arithmeticMedian, isApproved: isApprovedInFirstTest);

    if(!isApprovedInFirstTest) {
      print('Enter recovery note:');
      final String noteRecoveryInput = stdin.readLineSync() as String;
      double noteRecovery = double.parse(noteRecoveryInput);

      bool isApprovedInRecoveryTest = verifyIfStudentIsApproved(studentNote: noteRecovery, minumimNote: minimumNoteRecovery);
      showStudentResult(nameStudent: nameStudent, note: noteRecovery, isApproved: isApprovedInRecoveryTest);
    }
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}

double calculateArithmeticMedian(List<double> notes) {
  double sumOfNotes = 0.0;

  for (double note in notes) {
    sumOfNotes += note;
  }

  return sumOfNotes / notes.length;
}

bool verifyIfStudentIsApproved({required double studentNote, required double minumimNote}) => studentNote >= minumimNote;

void showStudentResult({required String nameStudent, required double note, required bool isApproved}) {
  print('$nameStudent, your note is: $note, you`re: ${isApproved ? 'APPROVED !!!' : 'RECOVERY !!!'}');
}