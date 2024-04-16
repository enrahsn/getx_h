import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/rebuilctrl.dart';

class FourPage extends StatelessWidget {
  FourPage({super.key});
final RebuildController extcontroller = Get.put(RebuildController());
// RebuildController extcontroller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('update Get Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GetBuilder<RebuildController>(
                init: RebuildController(),
                builder: (controller) {
                  print('count 1 rebuild');
                  return Text(
                    "${controller.count1}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  );
                },
              ),
            ),
            Center(
              child: GetBuilder<RebuildController>(
                builder: (controller) {
                  print('count 2 rebuild');
                  return Text(
                    "${controller.count2}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  );
                },
              ),
            ),
            Center(
              child: GetBuilder<RebuildController>(
                builder: (controller) {
                  print('sum rebuild');
                  return Text(
                    "${controller.sum}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  );
                },
              ),
            ),
            MaterialButton(onPressed: () {
              extcontroller.incrementOne();
            },
            child:  const Text(
                    "add one",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
            ),
            MaterialButton(onPressed: () {
              extcontroller.incrementTwo();
            },
            child:  const Text(
                    "add Two",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
            ),
            //  GetX<HomeCtrl>(
            //   init: HomeCtrl(),
            //   builder: (controller)=> Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         padding: const EdgeInsets.all(20),
            //         child: IconButton(
            //             onPressed: () {
            //               controller.increment();
            //               },
            //             icon: const Icon(
            //               Icons.add,
            //               size: 33,
            //             ))),
            //       Text(
            //         "${controller.counter.value}",
            //         style:
            //             const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.all(20),
            //         child: IconButton(
            //             onPressed: () {
            //               controller.decrement() ;
            //             },
            //             icon: const Icon(
            //               Icons.remove,
            //               size: 33,
            //             )),
            //       ),
            //     ],
            //   ),)
          ],
        ),
      ),
    );
  }
}
