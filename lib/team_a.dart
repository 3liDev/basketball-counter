import 'package:basketball_counter_app/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/count_controller.dart';

// ignore: must_be_immutable
class TeamA extends StatelessWidget {
  TeamA({Key? key}) : super(key: key);
  CountPoint controller = Get.put(CountPoint());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Team A",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            "${controller.teamAPoint.value}",
            style: const TextStyle(
              fontSize: 100,
            ),
          ),
          ElevButton(
            name: "Add 1 Point",
            onClick: () {
              controller.teamAPoint.value++;
            },
          ),
          ElevButton(
            name: "Add 2 Point",
            onClick: () {
              controller.teamAPoint.value += 2;
            },
          ),
          ElevButton(
            name: "Add 3 Point",
            onClick: () {
              controller.teamAPoint.value += 3;
            },
          )
        ],
      );
    });
  }
}
