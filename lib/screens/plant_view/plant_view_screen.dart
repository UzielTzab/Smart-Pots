import 'package:flutter/material.dart';
import 'package:smart_pots_app/utils/colors.dart';
import 'package:smart_pots_app/widgets/plant_stats_card.dart';
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
                const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plantName,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Descripción de la planta, hábitad y datos curiosos sobre ella",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PlantStatsCard(
                      icon: Icons.water_drop,
                      text: "Humedad",
                      measureData: 20.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    PlantStatsCard(
                      icon: Icons.light_mode,
                      text: "Luz",
                      measureData: 90.9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    PlantStatsCard(
                      icon: Icons.thermostat,
                      text: "Temperatura",
                      measureData: 20.0,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SmartButton(
                        textButton: "Regar",
                        hasIcon: true,
                        isPrimaryButton: true,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SmartButton(
                        textButton: "Detalles",
                        hasIcon: false,
                        isPrimaryButton: false,
                      ),
                    ],
                  ),
                ),
                Text(
                  "Instrucciones de cuidado",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
