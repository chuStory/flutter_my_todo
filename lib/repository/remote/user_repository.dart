import 'package:class_my_todo_v1/models/entity/user_entity.dart';

import '../../models/dto/User_dto.dart';

abstract class UserRepository {
  Future<UserEntity> signIn(UserDto userDto);
  Future<int> signUp(UserDto userDto);
}