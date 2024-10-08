
import 'package:crud_app/screens/update_new_product_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      tileColor: Colors.white60,
      title: Text('Product Name'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code : 123'),
          Text('Price: \$200'),
          Text('Quantity: CODE'),
          Text('Total Price: Code'),
          Text('Product code : Code'),
          Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) {
                    return const UpdateProductScreen();
                  },),
                  );
                },
                icon:Icon(Icons.edit),
                label: Text('Edit'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.delete_outline,color: Colors.red,),
                label: Text('Delete',style: TextStyle(
                  color: Colors.red,
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}