import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../controller/home_ctrl.dart';
// ignore: must_be_immutable
class HomePage extends StatelessWidget {
      HomePage({super.key});
// var controller = Get.put(HomeCtrl());
final HomeCtrl controller = Get.put(HomeCtrl());

int counter =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Getx App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Obx(()=> Row(
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
                "${controller.counter.value}",
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

/*
class HomePage extends StatefulWidget {
  const HomePage({super.key, });


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx App'),
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
                      setState(() {
                      counter++;
                      });
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 33,
                    )),
              ),
              Text(
                "$counter",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                    icon: const Icon(
                      Icons.remove,
                      size: 33,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/