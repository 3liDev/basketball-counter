import 'package:basketball_counter_app/team_a.dart';
import 'package:basketball_counter_app/team_b.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/count_controller.dart';
import 'widgets/elevated_button.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  CountPoint controller = Get.put(CountPoint());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TeamA(),
            const SizedBox(
              height: 300,
              child: VerticalDivider(
                color: Colors.black54,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
            ),
            TeamB(),
          ],
        ),
        ElevButton(
          name: "Reset",
          onClick: () {
            controller.teamAPoint.value = 0;
            controller.teamBPoint.value = 0;
          },
        ),
      ],
    );
  }
}
