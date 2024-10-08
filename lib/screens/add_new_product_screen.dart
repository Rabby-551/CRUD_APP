import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _productNameTEController =
      TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _productCodeTEController =
      TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Product'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildNewProductForm(),
      ),
    );
  }

  Widget _buildNewProductForm() {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _productNameTEController,
              decoration: InputDecoration(
                hintText: 'Name',
                labelText: 'Product Name',
              ),
            ),
            TextFormField(
              controller: _unitPriceTEController,
              decoration: InputDecoration(
                hintText: 'Price',
                labelText: 'Unit Price',
              ),
            ),
            TextFormField(
              controller: _totalPriceTEController,
              decoration: InputDecoration(
                hintText: 'Total Price',
                labelText: 'Total Price',
              ),
            ),
            TextFormField(
              controller: _imageTEController,
              decoration: InputDecoration(
                hintText: 'Image',
                labelText: 'Product Image',
              ),
            ),
            TextFormField(
              controller: _productCodeTEController,
              decoration: InputDecoration(
                hintText: 'Product Code',
                labelText: 'Product Code',
              ),
            ),
            TextFormField(
              controller: _quantityTEController,
              decoration: InputDecoration(
                hintText: 'Quantity',
                labelText: 'Product Quantity',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                fixedSize: const Size.fromWidth(double.maxFinite),
              ),
              onPressed: onTapAddProductButton,
              child: Text('Add Product'),
            ),
          ],
        ),
      );
  }

  onTapAddProductButton(){
    return;
  }


  @override
  void dispose() {
   _productNameTEController.dispose();
   _unitPriceTEController.dispose();
   _totalPriceTEController.dispose();
   _imageTEController.dispose();
   _productCodeTEController.dispose();
   _quantityTEController.dispose();
    super.dispose();
  }
}
