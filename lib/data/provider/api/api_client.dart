import 'package:dio/dio.dart';
import 'package:hoshmand_code_challenge/core/utils/exceptions.dart';

import 'package:hoshmand_code_challenge/data/model/models.dart';

part 'api_client_impl.dart';

class _Api {
  static const String baseUrl = 'https://app.tarazorg.ir/api/qb/v4/';
  static const String units = 'test_unit';
}

abstract class ApiClient {
  factory ApiClient() = _ApiClientImpl;

  Future<List<UnitModel>> getAllUnits();
}
