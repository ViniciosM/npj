import 'dart:convert';

class Client {
  String? idClient;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? trainee;
  String? trainee2;
  String? createAt;
  String? notes;
  String? notes2;

  Client({
    this.idClient,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.trainee,
    this.trainee2,
    this.createAt,
    this.notes,
    this.notes2,
  });

  Client copyWith({
    String? idClient,
    String? name,
    String? email,
    String? phone,
    String? address,
    String? trainee,
    String? trainee2,
    String? createAt,
    String? notes,
    String? notes2,
  }) {
    return Client(
      idClient: idClient ?? this.idClient,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      trainee: trainee ?? this.trainee,
      trainee2: trainee2 ?? this.trainee2,
      createAt: createAt ?? this.createAt,
      notes: notes ?? this.notes,
      notes2: notes2 ?? this.notes2,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'idClient': idClient,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'trainee': trainee,
      'trainee2': trainee2,
      'createAt': createAt,
      'notes': notes,
      'notes2': notes2,
    };
  }

  factory Client.fromMap(Map<String, dynamic> map) {
    return Client(
      idClient: map['idClient'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      address: map['address'],
      trainee: map['trainee'],
      trainee2: map['trainee2'],
      createAt: map['createAt'],
      notes: map['notes'],
      notes2: map['notes2'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Client.fromJson(String source) => Client.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Client(idClient: $idClient, name: $name, email: $email, phone: $phone, address: $address, trainee: $trainee, trainee2: $trainee2, createAt: $createAt, notes: $notes, notes2: $notes2)';
  }
}
