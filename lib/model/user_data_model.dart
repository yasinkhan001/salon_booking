import 'dart:convert';

class SaloonOwner {
  final String? id;
  final String? email;
  final String? name;
  final String? salonName;
  final String? password;
  final String? phone;
  final String? address;
  final String? gender;
  final String? img;
  final bool? isAdmin;
  final String? description;
  final DateTime? updatedAt;
  final DateTime? createdAt;
  SaloonOwner(
      {this.id,
      this.name,
      this.salonName,
      this.address,
      this.img,
      this.email,
      this.gender,
      this.description,
      this.password,
      this.phone,
      this.isAdmin,
      this.createdAt,
      this.updatedAt});

  SaloonOwner copyWith({
    String? id,
    String? email,
    String? salonName,
    String? address,
    String? name,
    String? password,
    String? phone,
    String? gender,
    String? img,
    bool? isAdmin,
    String? description,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) =>
      SaloonOwner(
          id: id ?? this.id,
          img: img ?? this.img,
          salonName: salonName ?? this.salonName,
          address: address ?? this.address,
          description: description ?? this.description,
          name: name ?? this.name,
          phone: phone ?? this.phone,
          password: password ?? this.password,
          email: email ?? this.email,
          isAdmin: isAdmin ?? this.isAdmin,
          updatedAt: updatedAt ?? this.updatedAt,
          createdAt: createdAt ?? this.createdAt,
          gender: gender ?? this.gender);

  factory SaloonOwner.fromJson(String str) =>
      SaloonOwner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());
  factory SaloonOwner.fromMap(Map<String, dynamic> json) => SaloonOwner(
        id: json["id"],
        name: json['name'],
        salonName: json['salonName'],
        address: json['address'],
        email: json['email'],
        isAdmin: json['isAdmin'],
        gender: json['gender'],
        description: json['description'],
        password: json['password'],
        phone: json['phone'],
        img: json['img'],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "salonName": salonName,
        "address": address,
        "email": email,
        "gender": gender,
        "description": description,
        "password": password,
        "img": img,
        "isAdmin": isAdmin,
        "phone": phone,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
      };
}

class AppUser {
  final String? id;
  final String? email;
  final String? name;
  final String? password;
  final String? phone;
  final String? gender;
  final String? img;
  final bool? isAdmin;

  final String? description;
  final DateTime? updatedAt;
  final DateTime? createdAt;
  AppUser(
      {this.id,
      this.name,
      this.img,
      this.email,
      this.gender,
      this.description,
      this.password,
      this.phone,
      this.isAdmin,
      this.createdAt,
      this.updatedAt});

  AppUser copyWith({
    String? id,
    String? email,
    String? name,
    String? password,
    String? phone,
    String? gender,
    String? img,
    bool? isAdmin,
    String? description,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) =>
      AppUser(
          id: id ?? this.id,
          img: img ?? this.img,
          description: description ?? this.description,
          name: name ?? this.name,
          phone: phone ?? this.phone,
          password: password ?? this.password,
          email: email ?? this.email,
          isAdmin: isAdmin ?? this.isAdmin,
          updatedAt: updatedAt ?? this.updatedAt,
          createdAt: createdAt ?? this.createdAt,
          gender: gender ?? this.gender);

  factory AppUser.fromJson(String str) => AppUser.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());
  factory AppUser.fromMap(Map<String, dynamic> json) => AppUser(
        id: json["id"],
        name: json['name'],
        email: json['email'],
        isAdmin: json['isAdmin'],
        gender: json['gender'],
        description: json['description'],
        password: json['password'],
        phone: json['phone'],
        img: json['img'],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "gender": gender,
        "description": description,
        "password": password,
        "img": img,
        "isAdmin": isAdmin,
        "phone": phone,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
      };
}

class OrderTable {
  OrderTable({
    this.id,
    this.descriptions,
    this.tableChairsCount,
    this.status,
  });

  final String? id;
  final String? descriptions;
  final int? tableChairsCount;
  final String? status;

  OrderTable copyWith({
    String? id,
    String? descriptions,
    int? tableChairsCount,
    String? status,
  }) =>
      OrderTable(
        id: id ?? this.id,
        descriptions: descriptions ?? this.descriptions,
        tableChairsCount: tableChairsCount ?? this.tableChairsCount,
        status: status ?? this.status,
      );

  factory OrderTable.fromJson(String str) =>
      OrderTable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderTable.fromMap(Map<String, dynamic> json) => OrderTable(
        id: json["id"],
        descriptions: json["descriptions"],
        tableChairsCount: json["tableChairsCount"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "descriptions": descriptions,
        "tableChairsCount": tableChairsCount,
        "status": status,
      };
}
