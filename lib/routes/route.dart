import 'package:e_commerce/logic/binding/auth.binding.dart';
import 'package:e_commerce/logic/binding/main_binding.dart';
import 'package:e_commerce/logic/binding/product_binding.dart';
import 'package:e_commerce/view/screens/auth/forgot_password_screen.dart';
import 'package:e_commerce/view/screens/auth/login_screen.dart';
import 'package:e_commerce/view/screens/auth/signup_screen.dart';
import 'package:e_commerce/view/screens/cart_Screen.dart';
import 'package:e_commerce/view/screens/main_screen.dart';
import 'package:e_commerce/view/screens/payment_screen.dart';
import 'package:e_commerce/view/screens/welcome_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppRoutes {
  // initial route
  static const welcome = Routes.welcomeScreen;
  static const mainScreen = Routes.mainScreen;

  // get page

  static final routes = [
    // ignore: prefer_const_constructors
    GetPage(name: Routes.welcomeScreen, page: () => WelcomeScreen()),
    GetPage(
        name: Routes.loginScreen,
        page: () => LoginScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.signUpScreen,
        page: () => SignUpScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.forgetPasswordScreen,
        page: () => ForgetPasswordScreen(),
        binding: AuthBinding()),
    GetPage(name: Routes.mainScreen, page: () => MainScreen(), bindings: [
      AuthBinding(),
      MainBinding(),
      ProductBinding(),
    ]),
    GetPage(name: Routes.cartScreen, page: () => CartScreen(), bindings: [
      AuthBinding(),
      ProductBinding(),
    ]),

    GetPage(name: Routes.paymentScreen, page: () => PaymentScreen(), bindings: [
      AuthBinding(),
      ProductBinding(),
      MainBinding(),
    ]),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgetPasswordScreen = '/forgetPasswordScreen';
  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';
  static const paymentScreen = '/paymentScreen';
}
