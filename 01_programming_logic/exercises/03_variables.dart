/*
Imagine que você está construindo um sistema para uma escola e você foi convocado para construir um algoritimo onde você irá cadastrar os alunos.

Atividade:

Crie as variáveis que envolvam o cadastro do aluno;
Atribua valores a elas;
Faça a impressão de todas as variáveis;

*/

void main() {
  final student = StudentModel(
    id: 1001,
    name: 'Lucas Silva',
    photoUrl: 'https://img/alunos.com.br/lucas.jpg',
    age: 16,
    grade: '10º Ano',
    registrationNumber: 'A20241001',
    email: 'lucas.silva@email.com',
  );

  print(student);
}

class StudentModel {
  final int id;
  final String name;
  final String photoUrl;
  final int age;
  final String grade;
  final String registrationNumber;
  final String email;

  StudentModel({
    required this.id,
    required this.name,
    required this.photoUrl,
    required this.age,
    required this.grade,
    required this.registrationNumber,
    required this.email,
  });

  @override
  String toString() {
    return '''
      --- Dados do Aluno ---
      ID: $id
      Nome: $name
      Idade: $age
      Série: $grade
      Matrícula: $registrationNumber
      E-mail: $email
      Foto: $photoUrl
      ''';
  }
}
