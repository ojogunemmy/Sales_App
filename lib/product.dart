import 'package:flutter/material.dart';
import 'package:goldworld/addProductPage.dart';
import 'package:goldworld/productList.dart';
class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int indexProd=0;
  List<Widget> productView=[const ProductList(),const AddProduct()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexProd,
        onTap: (selectedOpt){
          setState(() {
            indexProd=selectedOpt;
          });

        },

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.list),label: 'Products',tooltip: 'product list'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box),label: 'Add Product',tooltip: 'add new product')
        
      ],
        
      ),
      body: productView.elementAt(indexProd),
    );
  }
}
