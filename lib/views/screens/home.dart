import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_ctrl.dart';
import 'first_page.dart';
import 'five_page copy.dart';
import 'second_page.dart';
import 'three_page.dart';
import 'four_page.dart';
import 'zero_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, });
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final controller = Get.lazyPut(()=>HomeCtrl());

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
                Get.to(ZeroPage());
              },
              child: const Text('Go to ZeroPage page'),
            ),
          ),
          const Spacer(),
           Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                Get.to(()=> const FivePage());
              },
              child: const Text('Go to Five page'),
            ),
          ),
          const Spacer(), Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                Get.to(()=> const SecondPage());
              },
              child: const Text('Go to second page'),
            ),
          ),
          const Spacer(),
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
        ],
      ),
    );
  }
}
