import 'package:insure_marts/core/api/dBoardNotification_api.dart';
import 'package:insure_marts/core/models/dashboard_notification_model.dart';
import 'package:insure_marts/core/view_model/base_vm.dart';
import 'package:insure_marts/util/auth_exception.dart';


import '../../locator.dart';

class DashBoardNotificationViewModel extends BaseModel {
  final DBoardNotificationApi _dBoardNotificationApi =
      locator<DBoardNotificationApi>();

  String error;


  List<DashBoardNotificationModel> notification;
  
  Future<void> getNotification() async {
    setBusy(true);
    try {
      notification = await _dBoardNotificationApi.getAllNotification();
      setBusy(false);
    } on AuthException catch (e) {
      setBusy(false);
      await dialog.showDialog(
          title: 'Error!', description: e.message, buttonTitle: 'Close');
      notifyListeners();
    }
  }




  // Future<void> searchItem(String text) async {
  //   setBusy(true);
  //   try {
  //     allItems = await _itemsApi.searchAllItems(text);
  //     setBusy(false);
  //   } on AuthException catch (e) {
  //     setBusy(false);
  //     await dialog.showDialog(
  //         title: 'Error!', description: e.message, buttonTitle: 'Close');
  //     notifyListeners();
  //   }
  // }
}
