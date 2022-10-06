class Supervisor {
  String? idSupervisor;
  String? name;
  String? email;
  Supervisor({
    this.idSupervisor,
    this.name,
    this.email,
  });

  Supervisor copyWith({
    String? idSupervisor,
    String? name,
    String? email,
  }) {
    return Supervisor(
      idSupervisor: idSupervisor ?? this.idSupervisor,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  factory Supervisor.fromMap(Map<String, dynamic> map) {
    return Supervisor(
      idSupervisor: map['idSupervisor'],
      name: map['name'],
      email: map['email'],
    );
  }

  @override
  String toString() =>
      'Supervisor(idSupervisor: $idSupervisor, name: $name, email: $email)';
}
