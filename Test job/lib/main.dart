import 'package:flutter/material.dart';
import 'package:testjob/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ProductDetailPage(),
      //home: ProductList(),
      home: HomePage(),
      //home: ProductAdd(),

      //home: AddProduct(),
      //home: MyTextField(field_name: "Product description",),
    );
  }
}
