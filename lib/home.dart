import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controller/Controller.dart';
import 'product_details.dart';

class ProductList extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Obx(() {
        if (productController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                final product = productController.productList[index];
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                    child: ListTile(
                          leading: Image.network(product.imageUrl,width:100,height: 200,),
                          title: Text(product.name),
                          subtitle: Text('\$${product.price}'),
                          onTap: () {
                            Get.to(() => ProductDetails(product: product));
                          },
                        ),
                  ),
                  ],
                  ),
                );
              },
            );

        }
      }),
    );
  }
}