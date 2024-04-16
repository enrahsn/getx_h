import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'three_page.dart';
import 'four_page.dart';

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
          Center(
            child: MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Get.to(FirstPage());
              },
              child: const Text('Go to GetBuilder page'),
            ),
          ),
          const Spacer(),
          Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                Get.to( SecondPage());
              },
              child: const Text('Go to second page'),
            ),
          ),
          const Spacer(),
          Center(
            child: MaterialButton(
              color: Colors.cyan,
              textColor: Colors.white,
              onPressed: () {
                Get.to(ThreePage());
              },
              child: const Text('Go to Getx page'),
            ),
          ),
          const Spacer(),
          Center(
            child: MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Get.to(FourPage());
              },
              child: const Text('Go to update page'),
            ),
          ),
          const Spacer(),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       padding: const EdgeInsets.all(20),
          //       child: IconButton(
          //           onPressed: () {
          //             setState(() {
          //             counter++;
          //             });
          //           },
          //           icon: const Icon(
          //             Icons.add,
          //             size: 33,
          //           )),
          //     ),
          //     Text(
          //       "$counter",
          //       style:
          //           const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(20),
          //       child: IconButton(
          //           onPressed: () {
          //             setState(() {
          //               counter--;
          //             });
          //           },
          //           icon: const Icon(
          //             Icons.remove,
          //             size: 33,
          //           )),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
