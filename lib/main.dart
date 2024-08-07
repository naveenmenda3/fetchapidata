import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:assignment/home.dart';
import 'package:assignment/product_details.dart';
void main() {
  runApp( GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: "/", page: ()=>ProductList()),

    ],
  ));
}

