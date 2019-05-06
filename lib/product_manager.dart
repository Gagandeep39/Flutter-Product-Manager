import 'package:flutter/material.dart';
import 'package:flutter_product_manager/products.dart';

///Created on Android Studio Canary Version
///User: Gagandeep
///Date: 07-05-2019
///Time: 00:14
///Project Name: flutter_product_manager

class ProductManager extends StatefulWidget {

  final String startingProduct;


  ProductManager(this.startingProduct);

  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {

  List<String> _products = [];

  @override
  void initState() {
    //runs before widget is created
    super.initState();
    _products.add(widget
      .startingProduct); //'widget' used to access variables of parent class
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(
      oldWidget); //executde when new data is sent to stateful widget constructor
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            _addProducts();
          },
          child: Text("Add Dummy item"),
          color: Colors.deepPurple,
          textColor: Colors.white,
        ),
        Products(_products)
      ],
    );
  }

  _addProducts() {
    setState(() {
      _products.add("Dummy Product");
    });
  }
}


