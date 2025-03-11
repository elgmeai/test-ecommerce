import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:test_ecommerce/featurs/home_page/data/model/category_by_id.dart';

import '../../../../core/global_variables/apis.dart';
import '../model/categor_model.dart';

abstract interface class RemoteDbGetCategories {
  Future<List<CategorModel>?> getCategories();
  Future<List<ProductModel>?> getCategoryBiId(int id);
}

class RemoteDbGetCategoriesImp implements RemoteDbGetCategories {
  @override
  Future<List<CategorModel>?> getCategories() async {
    List<CategorModel> allcategories = [];
    try {
      var response = await http.get(Apis.getCategories);
      List categories = jsonDecode(response.body)['data'];
      List<CategorModel> finalList =
          categories.map((e) => CategorModel.fromJson(e)).toList();
      allcategories = finalList;
      return allcategories;
    } catch (e) {
      Fluttertoast.showToast(
        msg: e.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: const Color.fromARGB(255, 2, 2, 2),
        textColor: Color.fromARGB(255, 255, 255, 255),
        fontSize: 16.0,
      );
    }
    return null;
  }

  @override
  Future<List<ProductModel>?> getCategoryBiId(int id) async {
    List<ProductModel> categoryById = [];
    try {
      var response = await http.get(Apis.getProductByCategory({'category_id':'$id','page':'1'}));

      List category = jsonDecode(response.body)['data'];
      List<ProductModel> finalList =
          category.map((e) => ProductModel.fromJson(e)).toList();

      categoryById = finalList;
      return categoryById;
    } catch (e) {
      print('=========================');
      Fluttertoast.showToast(
        msg: e.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: const Color.fromARGB(255, 2, 2, 2),
        textColor: Color.fromARGB(255, 255, 255, 255),
        fontSize: 16.0,
      );
    }
    return null;
  }
}
