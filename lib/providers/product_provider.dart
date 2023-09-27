import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> herbsProductList = [];
  ProductModel? productModel;
  fetchHerbsProductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();
    value.docs.forEach(
      (element) {
        // print(element.data());
        productModel = ProductModel(
          productImage: element.get("productImage"),
          productName: element.get("productName"),
          productPrice: element.get("productPrice"),
        );
        newList.add(productModel!);
      },
    );
    herbsProductList = newList;
    notifyListeners();
  }

  List<ProductModel>get getHerbsProductDataList {
    return herbsProductList;
  }
}
