import 'package:flutter/cupertino.dart';

class AppController {
  static final AppController instance = AppController._();
  AppController._();
  final themeSwitch = ValueNotifier<bool>(false);

  void changeTheme(bool value) {
    themeSwitch.value = value;
  }
}
