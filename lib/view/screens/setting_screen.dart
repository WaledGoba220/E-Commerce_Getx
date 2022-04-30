import 'package:e_commerce/utils/theme.dart';
import 'package:e_commerce/view/widgets/settings/dark_mode_widget.dart';
import 'package:e_commerce/view/widgets/settings/language_widget.dart';
import 'package:e_commerce/view/widgets/settings/log_out_widget.dart';
import 'package:e_commerce/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          // ProfileImageWidget(),

          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            thickness: 2,
          ),

          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextUtils(
                text: 'GENERAL',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Get.isDarkMode ? pinkClr : mainColor,
                underLine: TextDecoration.none,
              ),
              Icon(
                Icons.settings,
                size: 30,
                color: Get.isDarkMode ? pinkClr : mainColor,
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),
          DarkModeWidget(),
          const SizedBox(
            height: 20,
          ),
          const LanguageWidget(),

          const SizedBox(
            height: 20,
          ),

          LogOutWidget(),

          Divider(
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            thickness: 2,
          ),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       TextButton(
      //         onPressed: () {
      //           ThemeController().changesTheme();
      //         },
      //         child: Text(
      //           'Dark Mode',
      //           style: TextStyle(
      //               color: Get.isDarkMode ? Colors.white : Colors.black),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       GetBuilder<AuthController>(builder: (controller) {
      //         return TextButton(
      //           onPressed: () {
      //             Get.defaultDialog(
      //               title: "Logout From App",
      //               titleStyle: const TextStyle(
      //                 fontSize: 18,
      //                 color: Colors.black,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //               middleText: 'Are you sure you need to logout',
      //               middleTextStyle: const TextStyle(
      //                 fontSize: 18,
      //                 color: Colors.black,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //               backgroundColor: Colors.grey,
      //               radius: 10,
      //               textCancel: " No ",
      //               cancelTextColor: Colors.white,
      //               textConfirm: " YES ",
      //               confirmTextColor: Colors.white,
      //               onCancel: () {
      //                 Get.back();
      //               },
      //               onConfirm: () {
      //                 controller.signOutFromApp();
      //               },
      //               buttonColor: Get.isDarkMode ? pinkClr : mainColor,
      //             );
      //           },
      //           child: Text(
      //             'Logout',
      //             style: TextStyle(
      //                 color: Get.isDarkMode ? Colors.white : Colors.black),
      //           ),
      //         );
      //       }),
      //     ],
      //   ),
      // ),
    );
  }
}
