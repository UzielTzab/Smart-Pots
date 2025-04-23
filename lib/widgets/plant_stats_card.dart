import 'package:flutter/material.dart';
import 'package:smart_pots_app/utils/colors.dart';

class PlantStatsCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final double measureData;
  const PlantStatsCard(
      {super.key,
      required this.icon,
      required this.text,
      required this.measureData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.teriary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 15, left: 15),
        child: Column(
          children: [
            Icon(
              icon,
              color: AppColors.secondary,
            ),
            Text(
              text,
              style: TextStyle(color: AppColors.secondary),
            ),
            Text("$measureData %"),
          ],
        ),
      ),
    );
  }
}
