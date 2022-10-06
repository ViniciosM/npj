class Trainee {
  String? id;
  String? registration;
  String? name;
  String? email;
  String? semester;
  String? supervisor;

  Trainee({
    this.id,
    this.registration,
    this.name,
    this.email,
    this.semester,
    this.supervisor,
  });

  Trainee copyWith({
    String? id,
    String? registration,
    String? name,
    String? email,
    String? semester,
    String? supervisor,
  }) {
    return Trainee(
      id: id ?? this.id,
      registration: registration ?? this.registration,
      name: name ?? this.name,
      email: email ?? this.email,
      semester: semester ?? this.semester,
      supervisor: supervisor ?? this.supervisor,
    );
  }

  factory Trainee.fromMap(Map<String, dynamic> map) {
    return Trainee(
      id: map['id'],
      registration: map['registration'],
      name: map['name'],
      email: map['email'],
      semester: map['semester'],
      supervisor: map['supervisor'],
    );
  }

  @override
  String toString() {
    return 'Trainee(id: $id, registration: $registration, name: $name, email: $email, semester: $semester, supervisor: $supervisor)';
  }
}
