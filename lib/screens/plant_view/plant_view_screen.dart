import 'package:flutter/material.dart';
import 'package:smart_pots_app/utils/colors.dart';
import 'package:smart_pots_app/widgets/smart_button.dart';

class PlantViewScreen extends StatelessWidget {
  final String plantName;
  final String imageUrl;
  const PlantViewScreen(
      {super.key, required this.plantName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
      ),
      body: ListView(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plantName,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Especie",
                  style: TextStyle(fontSize: 18, color: AppColors.secondary),
                ),
                Text(
                  "Descripción de la planta, hábitad y datos curiosos sobre ella",
                  style: TextStyle(fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SmartButton(
                        textButton: "Regar",
                      ),
                      SmartButton(
                        textButton: "Detalles",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
