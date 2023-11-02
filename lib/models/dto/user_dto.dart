class UserDto {
  String? username;
  String email;
  String password;

  UserDto({required this.email, required this.password, this.username});

  Map<String, dynamic> toJson() {
    return {'email' : email, 'password' : password, 'username' : username ?? ''};
  }

  @override
  String toString() {
    return 'UserDto{email: $email, password: $password}';
  }
}