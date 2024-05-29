import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/screens/fourth.dart';
import 'package:getx_navigation/screens/home.dart';
import 'package:getx_navigation/screens/second.dart';
import 'package:getx_navigation/screens/splashscreen.dart';
import 'package:getx_navigation/screens/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: '/', page: () => const Splashscreen()),
        GetPage(name: '/', page: () =>  Home()),
        GetPage(name: '/second', page: () => const Second()),
        GetPage(
            name: '/third', page: () => const Third(), transition: Transition.zoom),
        GetPage(name: "/fourth", page: () => const Fourth()),
      ],
    );
  }
}

