import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:flutter_application_uas/components/ProductBox.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StoreProfileScreen extends StatefulWidget {
  StoreProfileScreen({Key? key}) : super(key: key);

  @override
  State<StoreProfileScreen> createState() => _StoreProfileScreenState();
}

List pages = [
  'assets/smoothslide1.png',
  'assets/smoothslide1.png',
  'assets/smoothslide1.png',
  'assets/smoothslide1.png',
  'assets/smoothslide1.png',
  'assets/smoothslide1.png'
];

class _StoreProfileScreenState extends State<StoreProfileScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Icon ikon = Icon(
    Icons.star,
    color: Colors.orange,
    size: 20,
  );
  Widget build(BuildContext context) {
    final _pages = List.generate(
      6,
      (index) => Container(
        height: 500,
        width: 500,
        child: Image.asset(pages[index]),
      ),
    );
    return Scaffold(
      backgroundColor: fromCssColor('#DEE1D7'),
      appBar: AppBar(
        backgroundColor: fromCssColor('#939A79'),
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: 300,
          height: 40,
          color: Colors.white,
          child: const TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              border: InputBorder.none,
              hintText: "Search",
            ),
          ),
        ),
        elevation: 0,
      ),
      body: ListView(shrinkWrap: true, children: [
        Column(
          children: [
            Container(
              height: 270,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 260,
                      child: PageView.builder(
                        controller: controller,
                        // itemCount: pages.length,
                        itemBuilder: (_, index) {
                          return _pages[index % pages.length];
                        },
                      ),
                    ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                type: WormType.thin,
                // strokeWidth: 5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                    height: 80,
                    width: 80,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/storepict.png'),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('H&M'),
                    Row(
                      children: [ikon, ikon, ikon, ikon, ikon],
                    ),
                    Text('75.2k Followers')
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        primary: fromCssColor('#939A79')),
                    child: Text('Follow'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 220,
                  child: ProductBoxFrame(
                      pict: 'assets/G1.png',
                      productname: 'Adides',
                      storename: 'H&M',
                      price: 10.5),
                ),
                Container(
                  height: 220,
                  child: ProductBoxFrame(
                      pict: 'assets/G2.png',
                      productname: 'Adides',
                      storename: 'H&M',
                      price: 10.5),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 220,
                  child: ProductBoxFrame(
                      pict: 'assets/C44.png',
                      productname: 'Adides',
                      storename: 'H&M',
                      price: 10.5),
                ),
                Container(
                  height: 220,
                  child: ProductBoxFrame(
                      pict: 'assets/C3.png',
                      productname: 'Adides',
                      storename: 'H&M',
                      price: 10.5),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
