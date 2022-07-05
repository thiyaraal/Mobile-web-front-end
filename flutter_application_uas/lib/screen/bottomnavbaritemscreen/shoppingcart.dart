import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';
import 'package:flutter_application_uas/components/shoppingcartfill.dart';
import 'package:from_css_color/from_css_color.dart';

class ShoppingCartScreen extends StatefulWidget {
  ShoppingCartScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

TextEditingController nama = TextEditingController();
List data = [];

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: fromCssColor('#DEE1D7'),
        appBar: AppBar(
          backgroundColor: fromCssColor('#939A79'),
          title: Text("Shopping Cart2"),
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        body: Column(
          children: [
            ShoppingCartFilling(
              // nama: '',
              // foto: '',
              // toko: '',
              // ukuran: '',
              // harga: 0,
              // data: [],
            )
          ],
        ));
  }
}
