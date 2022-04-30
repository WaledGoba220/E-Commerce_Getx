import 'package:e_commerce/logic/controller/cart_controller.dart';
import 'package:e_commerce/logic/controller/payment_controller.dart';
import 'package:e_commerce/utils/theme.dart';
import 'package:e_commerce/view/widgets/payment/delivery_continer_widget.dart';
import 'package:e_commerce/view/widgets/payment/payment_method_widget.dart';
import 'package:e_commerce/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);
  final cartController = Get.find<CartController>();
  final payMentController = Get.find<PayMentController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        title: const Text('PAYMENT'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.monetization_on)),
        ],
        elevation: 0.0,
        backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextUtils(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            text: "Shipping to",
            color: Get.isDarkMode ? Colors.white : Colors.black,
            underLine: TextDecoration.none,
          ),
          const SizedBox(
            height: 20,
          ),
          const DeliveryContinerWidget(),
          const SizedBox(
            height: 20,
          ),
          TextUtils(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            text: "Payment method",
            color: Get.isDarkMode ? Colors.white : Colors.black,
            underLine: TextDecoration.none,
          ),
          const SizedBox(
            height: 20,
          ),
          const PayMentMethodWidget(),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: TextUtils(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              text: "Total: ${cartController.total}\$",
              color: Get.isDarkMode ? Colors.white : Colors.black,
              underLine: TextDecoration.none,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                  primary: Get.isDarkMode ? pinkClr : mainColor,
                ),
                onPressed: () {},
                child: const Text(
                  "Pay Now",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      )),
    );
  }
}
