import 'package:flutter/material.dart';
import 'package:untitled30/constants.dart';
import 'package:untitled30/screen/cart_screen.dart';
import 'package:untitled30/screen/items_list.dart';
import 'package:untitled30/screen/widgets.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Catalog'),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(),
                  )),
              child: Icon(Icons.shopping_cart)),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: catalog.length,

          itemBuilder: (context, index) => ItemWidget(
              item:catalog[index]

          )),
    );
  }
}


