import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';
import 'package:flutter_application_uas/provider/THIYARAprovider.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:provider/provider.dart';

class ShoppingCartFilling extends StatefulWidget {
  ShoppingCartFilling({
    Key? key,
  }) : super(key: key);

  @override
  State<ShoppingCartFilling> createState() => _ShoppingCartFillingState();
}

class _ShoppingCartFillingState extends State<ShoppingCartFilling> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<THYIARA>(context);
    return Scaffold(
        backgroundColor: fromCssColor('#DEE1D7'),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: fromCssColor('#939A79'),
          title: Text("Shopping Cart"),
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        body: ListView(
            shrinkWrap: true,
            children: List.generate(prov.ListKeranjang.length, (i) {
              return Container(
                  padding: EdgeInsets.all(20),
                  height: 300,
                  width: 500,
                  child: Row(
                    children: [
                      ProductBoxFrame(
                          pict: prov.ListKeranjang[i]["Gambar"],
                          productname: prov.ListKeranjang[i]["Nama"],
                          storename: prov.ListKeranjang[i]["Toko"],
                          price: 20),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [Text('Size  :  '), Text('XL')],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text('Qty  : '),
                                Container(
                                    color: Colors.white,
                                    width: 40,
                                    height: 40,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          filled: true),
                                    )),
                              ],
                            ),
                            SizedBox(width: 50),
                            Container(
                              width: 140,
                              child: Divider(
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: [
                                Text('Total : '),
                                SizedBox(
                                  width: 50,
                                ),
                                Text('')
                              ],
                            )
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              prov.ListKeranjang.removeAt(i);
                            });
                          },
                          icon: Icon(Icons.delete)),
                    ],
                  ));
            })));
  }
}
