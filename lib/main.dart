import 'package:basketball_counter_app/home_page.dart';
import 'package:basketball_counter_app/widgets/card_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Points Counter"),
          backgroundColor: Colors.orange,
        ),
        body: HomePage(),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.person),
            backgroundColor: Colors.orange[800],
            onPressed: () {
              Get.to(const CardCircle());
            }),
      ),
    );
  }
}
