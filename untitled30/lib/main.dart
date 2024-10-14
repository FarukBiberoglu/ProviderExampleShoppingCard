import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled30/cart_provider.dart';
import 'package:untitled30/screen/catalog_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> CartProvider() ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ShoppingCardScreen(),
      ),
    );
  }
}

class ShoppingCardScreen extends StatelessWidget {
  const ShoppingCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CatalogScreen(),
    );
  }
}
