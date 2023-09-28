import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  ProductModel? productModel;

  // herbs
  List<ProductModel> herbsProductList = [];
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

  List<ProductModel> get getHerbsProductDataList {
    return herbsProductList;
  }

  //Fresh Fruits
  List<ProductModel> freshProductList = [];
  fetchFreshProductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("FreshProduct").get();
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
    freshProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getFreshProductDataList {
    return freshProductList;
  }


  //Root tubers
    List<ProductModel> rootProductList = [];
  fetchRootProductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("RootProduct").get();
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
    rootProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getRootProductDataList {
    return rootProductList;
  }

}
