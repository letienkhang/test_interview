class UserInterview {
  final String username;
  final String id;
  final String name;
  final String avatar;
  final String password;

  UserInterview({
    required this.username,
    required this.id,
    required this.name,
    required this.avatar,
    required this.password,
  });

  factory UserInterview.fromJson(Map<String, dynamic> json) {
    return UserInterview(
      username: json['username'],
      id: json['id'],
      name: json['name'],
      avatar: json['avatar'],
      password: json['password'],
    );
  }
}
