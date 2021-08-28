import 'package:insure_marts/core/api/others_api.dart';
import 'package:insure_marts/core/models/claim_model.dart';
import 'package:insure_marts/core/models/dashboard_notification_model.dart';
import 'package:insure_marts/core/view_model/base_vm.dart';
import 'package:insure_marts/util/auth_exception.dart';
import '../../locator.dart';



class OthersViewModel extends BaseModel {
  final OthersApi _othersApi = locator<OthersApi>();
  List<ClaimModel> claimModel;
  List<DashBoardNotificationModel> notification;
  List<String> extension;
  String error;

  Future<void> getNotification() async {
    setBusy(true);
    try {
      notification = await _othersApi.getAllNotification();
      setBusy(false);
    } on AuthException catch (e) {
      setBusy(false);
      await dialog.showDialog(
          title: 'Error!', description: e.message, buttonTitle: 'Close');
      notifyListeners();
    }
  }



  Future<void> getExtension() async {
    setBusy(true);
    try {
      extension = await _othersApi.getAllExtension();
      setBusy(false);
      // notifyListeners();
    } on AuthException catch (e) {
      setBusy(false);
      await dialog.showDialog(
          title: 'Error!', description: e.message, buttonTitle: 'Close');
      notifyListeners();
    }
  }

  Future<void> getClaimModel() async {
    setBusy(true);
    try {
      claimModel = await _othersApi.getClaims();
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
