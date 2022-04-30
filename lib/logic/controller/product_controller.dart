import 'package:e_commerce/model/product_models.dart';
import 'package:e_commerce/service/data/product_Service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProductController extends GetxController {
  var productList = <ProductModels>[].obs;
  var favouriteList = <ProductModels>[].obs;
  var isLoading = true.obs;
  var storage = GetStorage();

  //search
  var searchList = <ProductModels>[].obs;
  TextEditingController searchTextController = TextEditingController();

  @override
  void onInit() {
    super.onInit();

    List? storedShoppings = storage.read<List>('isFavouritesList');

    if (storedShoppings != null) {
      favouriteList =
          storedShoppings.map((e) => ProductModels.fromJson(e)).toList().obs;
    }
    getProducts();
  }

  void getProducts() async {
    var products = await ProductService.getProduct();

    try {
      isLoading(true);
      if (products.isNotEmpty) {
        productList.addAll(products);
      }
    } finally {
      isLoading(false);
    }
  }

  // favourite screen (logic)

  void manageFavourites(int productId) async {
    var existIndex =
        favouriteList.indexWhere((element) => element.id == productId);

    if (existIndex >= 0) {
      favouriteList.removeAt(existIndex);
      await storage.remove('isFavouriteList');
    } else {
      favouriteList.add(
        productList.firstWhere((element) => element.id == productId),
      );
      await storage.write('isFavouriteList', favouriteList);
    }
  }

  bool isFavourites(int productId) {
    return favouriteList.any((element) => element.id == productId);
  }

  //search bar logic

  //Search Bar Logic

  void addSearchToList(String searchName) {
    searchName = searchName.toLowerCase();

    searchList.value = productList.where((search) {
      var searchTitle = search.title.toLowerCase();
      var searchPrice = search.price.toString().toLowerCase();

      return searchTitle.contains(searchName) ||
          searchPrice.toString().contains(searchName);
    }).toList();

    update();
  }

  void clearSearch() {
    searchTextController.clear();
    addSearchToList("");
  }
}
