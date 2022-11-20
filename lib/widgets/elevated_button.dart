import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:basketball_counter_app/controller/count_controller.dart';

// ignore: must_be_immutable
class ElevButton extends StatelessWidget {
  String? name;
  final VoidCallback? onClick;
  ElevButton({
    Key? key,
    this.name,
    this.onClick,
  }) : super(key: key);

  //void onClick() {}

  CountPoint controller = Get.put(CountPoint());

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.orange,
        minimumSize: const Size(100, 40),
      ),
      onPressed: onClick,
      child: Text(
        name!,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
