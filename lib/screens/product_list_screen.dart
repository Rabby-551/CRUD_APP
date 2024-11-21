import 'dart:convert';

import 'package:crud_app/models/product.dart';
import 'package:crud_app/screens/add_new_product_screen.dart';
import 'package:crud_app/screens/product_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {

List<Product> productList = [];

  @override
  void initState() {
    super.initState();
    getProductList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return  ProductItem(
              product: productList[index],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 16,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const AddNewProductScreen();
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  //API Integration

  Future<void> getProductList() async {
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct');
    Response response = await get(uri);
    // print(response);
    // print(response.statusCode);
    // print(response.body);

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = jsonDecode(response.body.toString());
      print(jsonResponse);
      for (var item in jsonResponse['data']) {
        Product product = Product(id:item[' _id'],
            productName: item['ProductName'],
            productCode: item['ProductCode'],
            productImage: item[' Img'],
            unitPrice: item[' UnitPrice'],
            quantity:item['Qty'],
            totalPrice: item['TotalPrice'],
            createAt:item['CreatedDate']);
        productList.add(product);
      }
      setState(() {

      });
    }
  }
}
