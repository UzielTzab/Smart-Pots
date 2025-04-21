import 'package:flutter/material.dart';
import 'package:smart_pots_app/routes/app_routes.dart';
import 'package:smart_pots_app/utils/colors.dart';

class PlantsTile extends StatelessWidget {
  final String imageUrl;
  final String plantName;
  final String daysToWater;
  final bool isAlert;
  const PlantsTile(
      {super.key,
      required this.imageUrl,
      required this.plantName,
      required this.daysToWater,
      required this.isAlert});

  @override
  Widget build(BuildContext context) {
    pressButton() {
      Navigator.pushNamed(context, AppRoutes.plantView,
          arguments: {"plantName": plantName, "imageUrl": imageUrl});
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => {pressButton()},
        child: ListTile(
          trailing: isAlert
              ? Icon(
                  Icons.info,
                  color: AppColors.secondary,
                )
              : Icon(
                  Icons.check_circle_outline,
                  color: AppColors.teriary,
                ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              height: 100,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                plantName,
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Regar en: $daysToWater días",
                style: TextStyle(color: AppColors.secondary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
