
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/home_ctrl.dart';
// ignore: must_be_immutable
class FirstPage extends StatelessWidget {
  FirstPage({super.key});

//الاسرع
int counter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Getx App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       GetBuilder<HomeCtrl>(
          init: HomeCtrl(),
          builder: (controller)=> Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: IconButton(
                    onPressed: () {
                      controller.increment();
                      },
                    icon: const Icon(
                      Icons.add,
                      size: 33,
                    ))),
              Text(
                "${controller.counter}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
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
          ),)
        ],
      ),
    );
  }
}
