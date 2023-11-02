//HTTP 통신 객체 설정
import 'package:class_my_todo_v1/shared/api.dart';
import 'package:dio/dio.dart';

final dio = Dio(BaseOptions(
  baseUrl: baseUri,
  contentType: 'application/json; charset=utf-8'),
);