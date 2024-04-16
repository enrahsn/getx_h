import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.counter});

  int counter = 0;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                "${widget.counter}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(20),
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
