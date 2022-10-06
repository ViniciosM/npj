import 'dart:convert';

class Coordinator {
  String? idCoordinator;
  String? name;
  String? email;

  Coordinator({
    this.idCoordinator,
    this.name,
    this.email,
  });

  Coordinator copyWith({
    String? idCoordinator,
    String? name,
    String? email,
  }) {
    return Coordinator(
      idCoordinator: idCoordinator ?? this.idCoordinator,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  factory Coordinator.fromMap(Map<String, dynamic> map) {
    return Coordinator(
      idCoordinator: map['idCoordinator'],
      name: map['name'],
      email: map['email'],
    );
  }

  @override
  String toString() =>
      'Coordinator(idCoordinator: $idCoordinator, name: $name, email: $email)';
}
