import 'package:arquitetura/app/interfaces/local_storage_interface.dart';
import 'package:arquitetura/app/models/appconfig_model.dart';
import 'package:arquitetura/app/services/shared_local_storage_service.dart';
import 'package:flutter/cupertino.dart';

class AppController {
  static final AppController instance = AppController._();
  AppController._() {
    storage.get('isDark').then((value) {
      config.themeSwitch.value = value;
    });
  }

  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  final ILocalStorage storage = SharedLocalStorageService();

  void changeTheme(bool value) {
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}