import 'package:flutter/material.dart';

class PurLogCard extends StatefulWidget {
  PurLogCard({Key? key}) : super(key: key);

  @override
  State<PurLogCard> createState() => _PurLogCardState();
}

class _PurLogCardState extends State<PurLogCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(
                    color: Colors.grey, style: BorderStyle.solid, width: 1)),
            elevation: 15,
            child: Container(
                height: 200,
                width: 390,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/C1.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mafia Babictor'),
                            Text("H&M"),
                            Text('Qty : 5'),
                          ],
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Total'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('\$ ${119.5}')
                      ],
                    )
                  ],
                )))
      ],
    );
  }
}
