import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:insure_marts/core/models/user_model.dart';

const String kUserBoxName = 'userBox';
const String kUser = 'userr';
const String kToken = 'token';
const String kSavedBox = 'saved01';

class AppCache {
  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox<dynamic>(kUserBoxName);
  }
  static Box<dynamic> get _box => Hive.box<dynamic>(kUserBoxName);


  String a = '';


    static void saveToken(String token) {
    if(token == null){
      return;
    }
    _box.put(kToken, token);
  }

  static String getToken() {
    final String data = _box.get(kToken) as String;
    return data;
  }



  static void saveUser(LoginModel user) {
    if (user == null) {
      return;
    }
    _box.put(kUser, user.toJson());
  }

  static LoginModel getUser() {
    dynamic data = _box.get(kUser);
    if (data == null) {
      return null;
    }
    return LoginModel.fromJson(data);
  }




  static void clear() {
    _box.clear();
  }

  static void clean(String key) {
    _box.delete(key);
  }

}
