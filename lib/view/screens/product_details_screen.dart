import 'package:e_commerce/model/product_models.dart';
import 'package:e_commerce/view/widgets/product_details/add_cart.dart';
import 'package:e_commerce/view/widgets/product_details/clothes_info.dart';
import 'package:e_commerce/view/widgets/product_details/images_sliders.dart';
import 'package:e_commerce/view/widgets/product_details/sized_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModels productModels;
  const ProductDetailsScreen({
    Key? key,
    required this.productModels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSliders(
                imageUrl: productModels.image,
              ),
              ClothesInfo(
                title: productModels.title,
                productId: productModels.id,
                rate: productModels.rating.rate,
                description: productModels.description,
              ),
              const SizeList(),
              AddCart(price: productModels.price, productModels: productModels,),
            ],
          ),

        ),
      ),
    );
  }
}
