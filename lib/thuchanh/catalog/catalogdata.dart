import 'dart:core';

import 'package:flutter/foundation.dart';

class Mathang {
  String tenMH;
  int gia;

  Mathang({
    required this.tenMH,
    required this.gia,
  });
}
class CatalogN5 extends ChangeNotifier {
  List<Mathang> listMathang = [
    Mathang(tenMH: 'Xoài', gia: 45000),
    Mathang(tenMH: 'Me', gia: 35000),
    Mathang(tenMH: 'Ổi', gia: 25000),
    Mathang(tenMH: 'Bưởi', gia: 15000),
    Mathang(tenMH: 'Sầu riêng', gia: 45000),
    Mathang(tenMH: 'Thanh long', gia: 35000),
    Mathang(tenMH: 'Mận', gia: 25000),
    Mathang(tenMH: 'Chuối', gia: 20000),
    Mathang(tenMH: 'Dưa lưới', gia: 30000),
    Mathang(tenMH: 'Cam', gia: 32000),
    Mathang(tenMH: 'Ớt', gia: 12000),
  ];

  List<int> _giohang = [];

  List<Mathang> get mathangs => listMathang;

  List<int> get giohang => _giohang;

  int get soLuongGioHang => _giohang.length;
  // int get Tienthanhtoan{
  //   int tong =0;
  //   for(int i=0;i<giohang;i++)
  //     {
  //       tong=
  //     }
  //   return tong;
  // }
  void themvaogiohang(int index) {
    _giohang.add(index);
    notifyListeners();
  }

  void XoaMatHang(int index) {
    _giohang.remove(index);
    notifyListeners();
  }

// bool kiemtra(int index) {
//   for (int i in giohang) {
//     if (i == index)
//
//   return true;
//   }
// }
}