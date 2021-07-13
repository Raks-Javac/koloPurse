class User {
  String username;
  String password;
  User({required this.username, required this.password});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': username,
      'password': password,
    };

    return map;
  }

  // factory User.fromJson(Map<String, dynamic> json) {
  //   return User(
  //     email: json['request']['email'],
  //     password: json['request']['password'],
  //   );
  // }
}

class NewUser {
  String username;
  String password;
  String fullname;
  String phone;
  String accountType;
  NewUser(
      {required this.username,
      required this.password,
      required this.accountType,
      required this.fullname,
      required this.phone});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': username,
      'password': password,
    };

    return map;
  }

  // factory NewUser.fromJson(Map<String, dynamic> json) {
  //   return NewUser(
  //     fullname: json['request']['fullname'],
  //     accountType: json['request']['accountType'],
  //     phone: json['request']['phone'],
  //     email: json['request']['email'],
  //     password: json['request']['password'],
  //   );
  // }
}
