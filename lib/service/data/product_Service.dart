import 'package:e_commerce/model/product_models.dart';
import 'package:e_commerce/utils/my_string.dart';
import 'package:http/http.dart' as http;

class ProductService {
  static Future<List<ProductModels>> getProduct() async {
    // ignore: unnecessary_string_interpolations
    var response = await http.get(Uri.parse('$baseUrl/products'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return productModelsFromJson(jsonData);
    } else {
      return throw Exception('Failed To Load Products');
    }
  }
}
