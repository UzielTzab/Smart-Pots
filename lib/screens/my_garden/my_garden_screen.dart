import 'package:flutter/material.dart';
import 'package:smart_pots_app/screens/my_garden/my_garden_body.dart';
import 'package:smart_pots_app/screens/my_garden/my_garden_header.dart';
import 'package:smart_pots_app/utils/colors.dart';

class MyGardenScreen extends StatelessWidget {
  const MyGardenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyGardenHeader(),
          Divider(
            thickness: 2,
            color: AppColors.teriary,
          ),
          MyGardenBody(),
        ],
      ),
    ]);
  }
}
