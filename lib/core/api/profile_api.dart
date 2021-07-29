import 'package:dio/dio.dart';
import 'package:insure_marts/core/api/base_api.dart';
import 'package:insure_marts/core/models/error_model.dart';
import 'package:insure_marts/core/models/profile_model.dart';
import 'package:insure_marts/util/constant/messages.dart';
import 'package:insure_marts/util/error/custom_exception.dart';
import 'package:insure_marts/util/error/error_util.dart';
import 'package:logger/logger.dart';




class ProfileApi extends BaseProfile {
  Logger log = Logger();

  Future<ProfileModel> getMe() async {
    try {
      var response = await Dio().get("$baseUrl/me", options: defaultOptions);
      switch (response.statusCode) {
        case SERVER_OKAY:
          return ProfileModel.fromJson(response.data);
          break;
        default:
          throw ErrorModel.fromJson(response.data).error;
          break;
      }
    } catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }
}
