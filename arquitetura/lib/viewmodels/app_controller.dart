import 'package:arquitetura/app/interfaces/local_storage_interface.dart';
import 'package:arquitetura/app/services/shared_local_storage_service.dart';
import 'package:arquitetura/viewmodels/change_theme_viewmodels.dart';
import 'package:flutter/cupertino.dart';

class AppController {
  static final AppController instance = AppController._();
  AppController._() {
    changeThemeViewModel.init();
  }

  final ChangeThemeViewModel changeThemeViewModel =
      ChangeThemeViewModel(storage: SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch =>
      changeThemeViewModel.config.themeSwitch;

  final ILocalStorage storage = SharedLocalStorageService();
}
