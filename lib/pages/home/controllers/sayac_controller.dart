import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SayacController extends GetxController {
  var _list = List;
  var _sayac = 0.obs;
  int sayacDegeri() {
    return _sayac.value;
  }

  // ya da
  get sayac => _sayac.value;
  set sayac(yeniDeger) => _sayac.value = yeniDeger;
  void artir() {
    sayac += 1;
  }

  void azalt() {
    sayac -= 1;
  }

  void snack() {
    Get.snackbar("snackmesaj", "153578264",
        duration: Duration(milliseconds: 750),
        isDismissible: true,
        dismissDirection: DismissDirection.startToEnd);
  }
}
