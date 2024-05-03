import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [AuthRepository, Dio, InternetConnectionChecker],
)
void main() {}
