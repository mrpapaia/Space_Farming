import 'dart:convert';

class User {
  String nome;
  String cpf;
  String tel;
  String email;
  List<String> fazenda;
  User({
    this.nome,
    this.cpf,
    this.tel,
    this.email,
    this.fazenda,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'cpf': cpf,
      'tel': tel,
      'email': email,
      'fazenda': fazenda,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
      nome: map['nome'],
      cpf: map['cpf'],
      tel: map['tel'],
      email: map['email'],
      fazenda: List<String>.from(map['fazenda']),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(nome: $nome, cpf: $cpf, tel: $tel, email: $email, fazenda: $fazenda)';
  }
}
