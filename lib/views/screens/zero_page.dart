
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/home_ctrl.dart';
// ignore: must_be_immutable
class ZeroPage extends StatelessWidget {
  ZeroPage({super.key});
 HomeCtrl controller = Get.put(HomeCtrl(),permanent: true);

//الاسرع
int counter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('GetBuilder'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: IconButton(
                    onPressed: () {
                      // controller.increment();
                      controller.increment();
                      },
                    icon: const Icon(
                      Icons.add,
                      size: 33,
                    ))),
             GetBuilder<HomeCtrl>(
          // init: HomeCtrl(),
          builder: (controller)=> Text(
                "${controller.counter}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),),
              Padding(
                padding: const EdgeInsets.all(20),
                child: IconButton(
                    onPressed: () {
                      controller.decrement() ;
                    },
                    icon: const Icon(
                      Icons.remove,
                      size: 33,
                    )),
              ),
            ],
          ),
          // )
        ],
      ),
    );
  }
}
