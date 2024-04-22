class User {
  final String name;
  final String address;
  final String email;
  final String mobileNumber;
  final String gender;
  final String password;

  User({
    required this.name,
    required this.address,
    required this.email,
    required this.mobileNumber,
    required this.gender,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      address: json['address'],
      email: json['email'],
      mobileNumber: json['mobileNumber'],
      gender: json['gender'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'address': address,
      'email': email,
      'mobileNumber': mobileNumber,
      'gender': gender,
      'password': password,
    };
  }
}
