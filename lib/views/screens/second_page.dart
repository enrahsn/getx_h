
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_ctrl.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
            ),
    body: Container(
      padding: const EdgeInsets.all(8),
      child: Column(children: [
        Center(
          child: GetBuilder<HomeCtrl>(
            init: HomeCtrl(),
            builder: (controller)=> Text(
                "${controller.counter}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
        )
      ],),
    ),
    );
  }
}