import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class HomeCtrl extends GetxController {
  RxInt counter = 0.obs;
  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}
