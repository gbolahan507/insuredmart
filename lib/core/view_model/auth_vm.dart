import 'package:flutter/cupertino.dart';
import 'package:insure_marts/core/api/auth_api.dart';
import 'package:insure_marts/core/models/user_model.dart';
import 'package:insure_marts/core/storage/local_storage.dart';
import 'package:insure_marts/util/constant/routes.dart';
import 'package:insure_marts/util/error/custom_exception.dart';
import 'package:insure_marts/widget/snackbar.dart';
import 'package:insure_marts/core/models/sign_up_model.dart';
import '../../locator.dart';
import 'base_vm.dart';

class AuthViewModel extends BaseModel {
  final AuthApi _authApi = locator<AuthApi>();
  String error1;
  String error2;
  String error3;
  String token;
  bool hasValidator;

  LoginModel loginModel;
  SignupModel signupModel;

  Future<void> createUsers(
      BuildContext context, Map<String, String> data) async {
    setBusy(true);
    try {
      signupModel = await _authApi.createUser(data);
      dialog.showDialog(
          title: 'Success', description: 'Login into your account');
      navigate.navigateToReplacing(LoginView);
      setBusy(false);
      hasValidator = true;
      notifyListeners();
    } on CustomException catch (e) {
      error2 = e.message;
      hasValidator = false;
      setBusy(false);
      showSnackBar(context, 'Error', '${e.message}');
      showErrorDialog(e);
      notifyListeners();
    }
  }

  Future<void> loginUser(BuildContext context, Map<String, String> data) async {
    setBusy(true);
    try {
      loginModel = await _authApi.loginUsers(data);
      AppCache.saveToken(loginModel.token);
      AppCache.saveUser(loginModel);
      navigate.navigateToReplacing(BottomNavView);
      setBusy(false);
      hasValidator = true;
      notifyListeners();
    } on CustomException catch (e) {
      setBusy(false);
      // showSnackBar(context, 'Error', '${e.message}');
      // showErrorDialog(e);
      error3 = e.message;
      print(e.message);
      hasValidator = false;
      notifyListeners();
    }
  }

  logout() {
    _authApi.logOut();
    // navigate.navigateTo(LogOutView);
    // SystemNavigator.pop();
    notifyListeners();
  }

  void showErrorDialog(CustomException e) {
    dialog.showDialog(
        title: 'Error', description: e.message, buttonTitle: 'Close');
  }
}
