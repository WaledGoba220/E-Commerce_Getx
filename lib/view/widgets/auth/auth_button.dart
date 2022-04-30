import 'package:e_commerce/utils/theme.dart';
import 'package:e_commerce/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class AuthButton extends StatelessWidget {
  const AuthButton(
      {Key? key,  required this.textButton,  required this.onPressed,})
      : super(key: key);
  final String textButton;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Get.isDarkMode ? mainColor : pinkClr,
          minimumSize: const Size(360, 50),
        ),
        onPressed: onPressed,
        child: TextUtils(
          color: Colors.white,
          text: textButton,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          underLine: TextDecoration.none,
        ));
  }
}
