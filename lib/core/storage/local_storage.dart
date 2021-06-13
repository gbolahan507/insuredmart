import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:insure_marts/core/models/user_model.dart';

const String kUserBoxName = 'userBox';
const String kUser = 'user';
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
    if (token == null) {
      return;
    }
    _box.put(kToken, token);
  }

    static String getToken() {
    final String data = _box.get(kToken) as String;
    return data;
  }
    

  static void saveUser(UserModel user) {
    if (user == null) {
      return;
    }
    _box.put(kUser, user.toJson());
  }

  static UserModel getUser() {
    final UserModel data = UserModel.fromJson(_box.get(kUser));
    return data;
  }


  // static bool saveJsonData(BuildContext context,
  //     {@required Map<String, dynamic> data}) {
  //   if (data == null) {
  //     return false;
  //   }

  //   final List<dynamic> list = getSavedData();
  //   for (final dynamic item in list) {
  //     final ItemModel i = ItemModel.fromJson(item['product']);
  //     if (i.id == data['product']['id']) {
  //       showSnackBar(context, 'Error', 'Item Already Exist in the bag');
  //       return false;
  //     }
  //   }

  //   list.add(data);
  //   _box.put(kSavedBox, list);
  //   return true;
  // }

  // static void removeOne(String id) {
  //   if (id == null) {
  //     return;
  //   }

  //   final List<dynamic> list = getSavedData();
  //   for (int index = 0; index < list.length; index++) {
  //     final ItemModel i = ItemModel.fromJson(list[index]['product']);
  //     if (i.id == id) {
  //       list.removeAt(index);
  //     }
  //   }

  //   _box.put(kSavedBox, list);
  // }

  static void clear() {
    _box.clear();
  }

  static void clean(String key) {
    _box.delete(key);
  }

  static List<dynamic> getSavedData() {
    final List<dynamic> data = _box.get(kSavedBox, defaultValue: <dynamic>[]);
    if (data == null) {
      return <Map<String, dynamic>>[];
    }
    final List<dynamic> list = List<dynamic>.from(data);
    return list;
  }
}
