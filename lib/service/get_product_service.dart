

import 'package:dio/dio.dart';
import 'package:projectone/api_service.dart';
import 'package:projectone/model/product_model.dart';

Future<List<ProductModel>> getAllProduct() async {
  final dio = Dio();

  List<ProductModel> productList = [];

  Response response = await dio.get('${ApiServise.baseUrl}/products');

  for (var element in response.data) {
    productList.add(ProductModel.fromJson(element));
  }

  return productList;
}
