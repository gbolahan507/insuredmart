import 'package:get_it/get_it.dart';
import 'package:insure_marts/core/api/others_api.dart';
import 'package:insure_marts/core/provider/all_toggle_provider.dart';
import 'package:insure_marts/core/provider/card_provider.dart';
import 'package:insure_marts/core/view_model/auth_vm.dart';
import 'package:insure_marts/core/view_model/others_vm.dart';
import 'package:insure_marts/core/view_model/startup_vm.dart';
import 'package:insure_marts/core/models/all_dropdown_model.dart';
import 'package:insure_marts/util/dialog_service.dart';
import 'package:insure_marts/util/navigator.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'core/api/auth_api.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());

  locator.registerFactory(() => StartUpViewModel());

  locator.registerLazySingleton(() => AuthApi());
  locator.registerFactory(() => AuthViewModel());

  locator.registerLazySingleton(() => OthersApi());
  locator.registerFactory(() => OthersViewModel());
  locator.registerFactory(() => AllDropDownModel());


}

final List<SingleChildWidget> allProviders = <SingleChildWidget>[
  ChangeNotifierProvider<AuthViewModel>(create: (_) => AuthViewModel()),
  ChangeNotifierProvider<OthersViewModel>(create: (_) => OthersViewModel()),
  ChangeNotifierProvider<ToggleData>(create: (_) => ToggleData()),
  ChangeNotifierProvider<CardProvider>(create: (_) => CardProvider()),
  ChangeNotifierProvider<AllDropDownModel>(create: (_) => AllDropDownModel()),
];
