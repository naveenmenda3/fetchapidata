// controllers/product_controller.dart
import 'package:get/get.dart';

import '../models/product_model.dart';
import '../services/api_service.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      if (products.isNotEmpty) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}