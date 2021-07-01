import 'package:arquitetura/app/services/app_controller.dart';
import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatelessWidget {
  const CustomSwitchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDark,
      onChanged: (value) {
        AppController.instance.changeTheme(value);
      },
    );
  }
}
