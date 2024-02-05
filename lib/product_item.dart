import 'package:flutter/material.dart';
import 'package:projectone/model/product_model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel allproduct;
  const ProductItem({
    Key? key,
    required this.allproduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 70, height: 70, child: Image.network(allproduct.image)),
            Text(
              allproduct.title,
              maxLines: 1,
              
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Text("${allproduct.price}\$"),
          ],
        ),
      ),
    );
  }
}
