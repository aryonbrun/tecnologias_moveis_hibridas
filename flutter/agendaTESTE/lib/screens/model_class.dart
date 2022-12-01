import 'dart:io';

class Contato {
  final String? nome;
  final String? sobrenome;
  final String? telefone;
  final String? email;
  final File? image;

  Contato({
    required this.nome,
    required this.sobrenome,
    required this.telefone,
    required this.email,
    required this.image,
  });
}
