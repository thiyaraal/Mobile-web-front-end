import 'dart:convert';
import 'package:flutter/material.dart';

class PROVCARD extends ChangeNotifier {
  initialData() async {
    setData = hp;
  }

  //Paste disini data hp dan laptop
  final hp = {
    "data": [
      {
        "model": "Blink Jacket",
        "img":
            "assets/G1.png",
        "desc":
            "'This Short is one of the best products this month with Modern Style of Fashion in urban city'",
        "developer": "H&M",
        "price": 2500000,
        "rating": 4.5,
        "price" : 99.9
      },
      {
        "model": "Sony Xperia Z",
        "img":
            "assets/C5.png",
        "desc":
            "Sony Xperia Z merupakan handphone HP dengan kapasitas 2330mAh dan layar 5 yang dilengkapi dengan kamera belakang 13.1MP dengan tingkat densitas piksel sebesar 441ppi dan tampilan resolusi sebesar 1080 x 1920pixels. Dengan berat sebesar 146g, handphone HP ini memiliki prosesor Quad Core. Tanggal rilis untuk Sony Xperia Z: September 2013",
        "developer": "Sony Mobile",
        "price": 1500000,
        "rating": 4.1,
        
        
      },
    ]
  };

  final laptop = {
    "data": [
      {
        "model": "Lenovo Legion",
        "img":
            "assets/C5.png",
        "desc":
            "Conquer the eSports arena with Legion 5 Pro devices, complete with the world’s first 16 WQXGA displays on gaming laptops. Slay in style with the newly designed Legion 5 devices, featuring alluring aluminum and magnesium blended bodies",
        "developer": "Lenovo",
        "price": 12500000,
        "rating": 4
      },
      {
        "model": "HP EliteBook",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/HP_Elitebook_820_G4.png/250px-HP_Elitebook_820_G4.png",
        "desc":
            "HP EliteBook is a line of business-oriented high-end notebooks and mobile workstations made by Hewlett-Packard (HP Inc.). The EliteBook series, which fits above the lower-end ProBook series, was introduced in August 2008 as a replacement of the HP Compaq high end line of notebooks.",
        "developer": "HP",
        "price": 2500000,
        "rating": 4.8
      },
    ]
  };

  dynamic _data;
  dynamic get data => _data;
  set setData(val) {
    var tmp = json.encode(val);
    _data = json.decode(tmp);

    notifyListeners();
  }

  ubahList(val) {
    print('val');
    if (val == 'hp') {
      setData = hp;
    } else {
      setData = laptop;
    }
  }
}
