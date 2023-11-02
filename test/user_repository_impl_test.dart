// 단위 테스트 작성 해보기

import 'package:class_my_todo_v1/models/dto/User_dto.dart';
import 'package:class_my_todo_v1/models/entity/user_entity.dart';
import 'package:class_my_todo_v1/repository/remote/user_repository.dart';
import 'package:class_my_todo_v1/repository/remote/user_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('회원 관리 도메인 테스트', () {
    test('사용자 로그인 테스트', () async {
      // given
      UserRepository userRepository = UserRepositoryImpl();
      UserDto userDto = UserDto(email: 'hong@example.com', password: 'hong1234');
      // when
      UserEntity userEntity = await userRepository.signIn(userDto);
      //then
      expect(userEntity, isA<UserEntity>()); // 데이터 타입이 UserEntity 확인
      expect(userEntity.username, '홍길동');

    });



  });
}