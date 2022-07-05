import 'package:flutter/material.dart';
import 'package:flutter_application_uas/Semogabisa/bismillah.dart';
import 'package:flutter_application_uas/Semogabisa/prov.dart';

import 'package:provider/provider.dart';

class SCREENCARD extends StatefulWidget {
  const SCREENCARD({Key? key}) : super(key: key);

  @override
  State<SCREENCARD> createState() => _SCREENCARDState();
}

class _SCREENCARDState extends State<SCREENCARD> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<PROVCARD>(context, listen: false).initialData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan12'),
        actions: [
          menuList(context),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(16.0), child: body(context)),
    );
  }

  menuList(BuildContext context) {
    final prov = Provider.of<PROVCARD>(context);
    return Container();
  }

  body(BuildContext context) {
    final prov = Provider.of<PROVCARD>(context);
    if (prov.data == null) {
      return const CircularProgressIndicator();
    } else {
      return ListView(
        children: [
          Container(
            height: 343,
            width: 500,
            child: new Image.asset(
              'assets/homepict.png',
            ),
          ),
          Column(
              children: List.generate(
            prov.data['data']!.length,
            (index) {
              var item = prov.data['data']![index];
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailCard(item: item)),
                    );
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(item['img']),
                              ListTile(
                                trailing:
                                    Text('\$ ${item['price'].toString()}'),
                                leading: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                title: Text(item['model'],
                                    style: TextStyle(color: Colors.red)),
                                subtitle: Text(item['developer'],
                                    style: TextStyle(fontSize: 13)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ));
            },
          )),
        ],
      );
    }
  }
}
