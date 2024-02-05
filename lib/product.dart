import 'package:flutter/material.dart';
import 'package:projectone/model/product_model.dart';
import 'package:projectone/product_item.dart';
import 'package:projectone/service/get_product_service.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //return Scaffold(body: ProductItem(price: 20,productName: "tea",image: "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhwwVCFqT8sEgP81oklQDUpAHPD9fXzVHEm3MkOXG5BaphPMFG1L9BF9Fn1nXRK9QHthPZ7fWzlnhL8mWd7BopV_Exf7KnV7NjgUjaAuCDYsuXH4BVFQVBNjPiqCUEIQUEsqFVuV-wJASdEgY-Dua6sVSedAiaUsMrp_XSqMjrGv-FfP4JCrNbF8LfF3rhi/w397-h640/%D8%A7%D8%AC%D9%85%D9%84-%D8%A7%D9%84%D8%B5%D9%88%D8%B1-%D8%A8%D9%86%D8%A7%D8%AA-%D9%83%D9%8A%D9%88%D8%AA.png-rw",));
  return FutureBuilder<List<ProductModel>>(
      future: getAllProduct(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          List<ProductModel> allproduct = snapshot.data ?? [];
          return ListView.builder(
            itemCount: allproduct.length,
            itemBuilder: (context, index) => ProductItem(
           allproduct: allproduct[index],            ),
          );
        } else {
          return const Center(child: Text("Error"));
        }
},
);
  
  }
}