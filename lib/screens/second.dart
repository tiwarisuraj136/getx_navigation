import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_navigation/screens/third.dart';

import 'fourth.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String dataFromFourth = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Go to Third and remove this screen from stack"),
              onPressed: () => Get.off(const Third()),
            ),
            const SizedBox(
              height: 100,
            ),
            Text("Data From Fourth Screen: $dataFromFourth"),
            ElevatedButton(
              child: const Text("Return Data from Fourth Screen"),
              onPressed: () async {
                dataFromFourth = await Get.to(const Fourth());
                setState(() {});
              },
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                child: const Text("Go to Named /fourth with parameter"),
                onPressed: () {
                  Get.toNamed("/fourth", arguments: "Passed From Second");
                }),
          ],
        ),
      ),
    );
  }
}