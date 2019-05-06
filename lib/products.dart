///Created on Android Studio Canary Version
///User: Gagandeep
///Date: 07-05-2019
///Time: 00:41
///Project Name: flutter_product_manager

import 'package:flutter/material.dart';

///User: Gagandeep
///Date: 07-05-2019
///Time: 00:41
///Project Name: flutter_product_manager

class Products extends StatelessWidget {
  //Value of product can change but on changing this Widget will reload again i.e instead of variable, widget will be updated
  final List<String> _product;

  Products(this._product);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _product.map((element) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text("$element"),
            ),
          ),
        );
      }).toList(),
    );
  }
}
