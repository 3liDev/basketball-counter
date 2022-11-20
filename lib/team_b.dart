import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/count_controller.dart';
import 'widgets/elevated_button.dart';

// ignore: must_be_immutable
class TeamB extends StatelessWidget {
  TeamB({Key? key}) : super(key: key);
  CountPoint controller = Get.put(CountPoint());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Team B",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            "${controller.teamBPoint.value}",
            style: const TextStyle(
              fontSize: 100,
            ),
          ),
          ElevButton(
            name: "Add 1 Point",
            onClick: () {
              controller.teamBPoint.value++;
            },
          ),
          ElevButton(
            name: "Add 2 Point",
            onClick: () {
              controller.teamBPoint.value += 2;
            },
          ),
          ElevButton(
            name: "Add 3 Point",
            onClick: () {
              controller.teamBPoint.value += 3;
            },
          )
        ],
      );
    });
  }
}
