import 'package:flutter/material.dart';
import 'package:flutter_application_uas/components/dropdown.dart';
import 'package:flutter_application_uas/components/shoppingcartfill.dart';
import 'package:flutter_application_uas/provider/THIYARAprovider.dart';
import 'package:flutter_application_uas/screen/bottomnavbaritemscreen/shoppingcart.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:provider/provider.dart';

class DetailProduct3Screen extends StatefulWidget {
  DetailProduct3Screen({Key? key}) : super(key: key);

  @override
  State<DetailProduct3Screen> createState() => _Detail_productState();
}

class _Detail_productState extends State<DetailProduct3Screen> {
  Icon ikon = Icon(
    Icons.star,
    color: Colors.orange,
    size: 20,
  );

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<THYIARA>(context);
    return Scaffold(
        backgroundColor: fromCssColor('#DEE1D7'),
        appBar: AppBar(
            backgroundColor: fromCssColor('#939A79'),
            title: Text('Tape White')),
        body: ListView(
          children: [
            Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 4.0,
                    child: Container(
                      height: 350,
                      width: 600,
                      child: Column(
                        children: [
                          Ink.image(
                            image: AssetImage('assets/C22.png'),
                            height: 290,
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.all(1),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _value = !_value;
                                  });
                                },
                                child: Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: _value
                                                  ? Icon(
                                                      Icons.favorite,
                                                      size: 30.0,
                                                      color: Colors.red[500],
                                                    )
                                                  : Icon(
                                                      Icons.favorite_outline,
                                                      size: 30.0,
                                                      color: Colors.red[500],
                                                    ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                              )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: 100,
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text('Tape White'),
                          subtitle: Text('by : Adidas'),
                          trailing: Text(" \$ ${39.8} "),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [ikon, ikon, ikon, ikon],
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    height: 250,
                    width: 500,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Description'),
                            SizedBox(height: 10),
                            Text(
                                'This Pants is super comfortable for the one who need a short pants for working out'),
                            SizedBox(height: 10),
                            SizedBox(height: 10),
                            Center(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Size : ',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Drop(),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(300, 60),
                                        primary: Colors
                                            .green[900], // Background color
                                      ),
                                      onPressed: () {
                                        prov.masukkanKeranjang('Tape White',
                                            'assets/C22.png', 'H&M', 39.8);
                                      },
                                      child: Text(
                                        'ADD TO CART',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ))
                                ],
                              ),
                            )
                          ]),
                    ),
                  ),
                ])),
          ],
        ));
  }
}
