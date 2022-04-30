import 'package:e_commerce/view/screens/category_screen.dart';
import 'package:e_commerce/view/screens/favourite_screen.dart';
import 'package:e_commerce/view/screens/home_screen.dart';
import 'package:e_commerce/view/screens/setting_screen.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    HomeScreen(),
    CategoryScreen(),
    FavouriteScreen(),
    SettingsScreen(),
  ].obs;

  var title = [
    "Goba Shop",
    "Categories",
    'Favourites',
    "Settings",
  ].obs;
}