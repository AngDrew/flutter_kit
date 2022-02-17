import 'package:dio/dio.dart';

import '../locator.dart';
import '../network_service.dart';

class UserAPI {
  final NetworkService _networkService = locator<NetworkService>();

  Future<Response<dynamic>?> doSomething() async {
    return await _networkService.request('path');
  }
}
