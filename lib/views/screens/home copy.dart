import 'package:flutter/material.dart';

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
