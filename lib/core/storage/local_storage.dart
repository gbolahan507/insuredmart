import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:insure_marts/core/models/user_model.dart';



const String kUserBoxName = 'userBox';
const String kUser = 'userr';
const String kToken = 'token';
const String kSavedBox = 'saved01';
const String kSaveExtension = 'saveExtensionnnn';
const String KrecentSearchesKey = 'recentSearchesKey';
const String KinsuranceType = 'KinsuranceTypekey';



class AppCache {
  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox<dynamic>(kUserBoxName);
  }

  static Box<dynamic> get _box => Hive.box<dynamic>(kUserBoxName);

  String a = '';


  static List<String> getExtensions() {
    return _box.get(kSaveExtension, defaultValue: <String>[]);
  }

  static void saveExtensions(String type) async {
    List<String> all = getExtensions();
    if (all.contains(type)) {
      all.remove(type);
    } else {
      all.add(type);
    }
    await _box.put(kSaveExtension, all);
  }

  static String getInsuranceType() {
    if (_box.containsKey(KinsuranceType)) {
      return _box.get(
        KinsuranceType,
      );
    } else {
      return 'No insurance choosen';
    }
  }

  static void saveInsuranceType(String type) {
    if (type == null) {
      return;
    }
    _box.put(KinsuranceType, type);
  }

    static String getToken() {
    final String data = _box.get(kToken) as String;
    return data;
  }

  static void saveToken(String token) {
    if (token == null) {
      return;
    }
    _box.put(kToken, token);
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
