import 'dart:convert';

class User {
  final String name;
  final String email;

  User(this.name, this.email);

  // 역직렬화
  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  // 직렬화
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}

void main() {
  String jsonString = '{"name": "홍길동","email": "abc@aaa.com"}';

  Map<String, dynamic> json = jsonDecode(jsonString);

  User user = User.fromJson(json);

  String userString = jsonEncode(user.toJson());

  print(userString);
}
