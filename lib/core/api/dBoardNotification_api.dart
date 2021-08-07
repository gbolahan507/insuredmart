import 'dart:async';

import 'package:insure_marts/core/models/dashboard_notification_model.dart';

class DBoardNotificationApi {
  //get All Items
  Future<List<DashBoardNotificationModel>> getAllNotification() async {
    try {
      // simulate loading/network delay
      await Future<void>.delayed(const Duration(seconds: 1));
      // since there's no api to get from, we fetch from a list locally stored
      return notification;
    } catch (e) {
      throw 'Error';
    }
  }

  //search All Items
  // Future<List<ItemModel>> searchAllItems(String a) async {
  //   try {
  //     final List<ItemModel> list = <ItemModel>[];
  //     for (final ItemModel val in allItems) {
  //       if (val.name.contains(a)) {
  //         list.add(val);
  //       }
  //     }
  //     // simulate loading/network delay
  //     await Future<void>.delayed(const Duration(milliseconds: 500));
  //     // since there's no api to get from, we fetch from a list locally stored
  //     return list;
  //   } catch (e) {
  //     throw 'Error';
  //   }
  // }
}
