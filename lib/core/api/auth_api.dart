import 'dart:async';
import 'package:dio/dio.dart';
import 'package:insure_marts/core/models/error_model.dart';
import 'package:insure_marts/core/models/user_model.dart';
import 'package:insure_marts/core/models/sign_up_model.dart';
import 'package:insure_marts/core/storage/local_storage.dart';
import 'package:insure_marts/util/constant/messages.dart';
import 'package:insure_marts/util/error/custom_exception.dart';
import 'package:insure_marts/util/error/error_util.dart';
import 'package:logger/logger.dart';

import 'base_api.dart';

class AuthApi extends BaseAPI {
  Logger log = Logger();

  SignupModel userModel;

  Future<SignupModel> createUser(Map<String, dynamic> data) async {
    try {
      var response = await Dio()
          .post("$baseUrl/signup", data: data, options: defaultOptions);
      switch (response.statusCode) {
        case SERVER_OKAY:
          return SignupModel.fromJson(response.data);
          break;
        default:
          throw ErrorModel.fromJson(response.data).error;
          break;
      }
    } catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }





  Future<LoginModel> loginUsers(Map<String, dynamic> data) async {
    try {
      var response = await Dio()
          .post("$baseUrl/login", data: data, options: defaultOptions);
      switch (response.statusCode) {
        case SERVER_OKAY:
          return LoginModel.fromJson(response.data);
          break;
        default:
          throw ErrorModel.fromJson(response.data).error;
          break;
      }
    } catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }


  logOut() {
    Future.delayed(const Duration(seconds: 2), () => AppCache.clear());
  }
}
