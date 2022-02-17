import 'package:dio/dio.dart';

bool isSuccess(Response<dynamic>? resp) => resp?.data?['status'] == '1';
