
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/screens/second.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Package | Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Go To Second"),
              onPressed: () => Get.to(const Second()),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              child: const Text("Name Route: /second"),
              onPressed: () {
                Get.toNamed("/second");
              },
            )
          ],
        ),
      ),
    );
  }
}
