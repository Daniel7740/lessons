class User {
  final int id;
  final String name;
  final String eMail;
  final String phone;

  User({
    required this.id,
    required this.name,
    required this.eMail,
    required this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      eMail: json['email'],
      phone: json['phone'],
    );
  }
}
