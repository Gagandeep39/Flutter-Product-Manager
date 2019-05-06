import 'package:flutter/material.dart';
import 'package:flutter_product_manager/product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Manager',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Product Manager"),
        ),
        body: ProductManager('Test Product'),
      ),
    );
  }
}

