class UserEntity {
  int userId;
  String username;
  String email;

  UserEntity({required this.userId, required this.username, required this.email});

  @override
  String toString() {
    return 'UserEntity{userId: $userId, username: $username, email: $email}';
  }

  // 변환 기능 추가
  // factory 메서드 활용
  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
        userId: json['userId'] as int,
        username: json['username'] as String,
        email: json['email'] as String
    );
  }
}