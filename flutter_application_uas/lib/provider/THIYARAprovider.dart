import 'package:flutter/material.dart';

class THYIARA extends ChangeNotifier {
  var ListKeranjang = [];

  void masukkanKeranjang(nama, gambar, toko, harga) {
    var temp = {"Nama": nama, "Gambar": gambar, "Toko": toko, "harga": harga};
    ListKeranjang.add(temp);
    print(ListKeranjang);
  }
}
