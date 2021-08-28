import 'dart:async';
import 'package:insure_marts/core/models/claim_model.dart';
import 'package:insure_marts/core/models/dashboard_notification_model.dart';
import 'package:insure_marts/core/models/homepage_model.dart';



class OthersApi {
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


  //get All Items
  Future<List<String>> getAllExtension() async {
    try {
      // simulate loading/network delay
      await Future<void>.delayed(const Duration(seconds: 1));
      // since there's no api to get from, we fetch from a list locally stored
      return extension;
    } catch (e) {
      throw 'Error';
    }
  }


  //get All Items
  Future<List<ClaimModel>> getClaims() async {
    try {
      // simulate loading/network delay
      await Future<void>.delayed(const Duration(seconds: 1));
      // since there's no api to get from, we fetch from a list locally stored
      return claimModel;
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
