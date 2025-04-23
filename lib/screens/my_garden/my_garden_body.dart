import 'package:flutter/material.dart';
import 'package:smart_pots_app/widgets/plants_tile.dart';
import 'package:smart_pots_app/widgets/smart_input.dart';

class MyGardenBody extends StatelessWidget {
  const MyGardenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
            child: Row(
              children: [
                SmartInput(),
              ],
            ),
          ),
          ListOfPlants(),
        ],
      ),
    );
  }
}

class ListOfPlants extends StatelessWidget {
  const ListOfPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlantTile(
          plantName: "Aloe",
          daysToWater: "3",
          isAlert: true,
          imageUrl:
              "https://m.media-amazon.com/images/I/71sEpC0wySL._AC_SX679_.jpg",
        ),
        PlantTile(
          plantName: "Bird Paradise",
          daysToWater: "4",
          isAlert: false,
          imageUrl:
              "https://m.media-amazon.com/images/I/71mIXscmItL._AC_SL1500_.jpg",
        ),
        PlantTile(
          plantName: "Aloete",
          daysToWater: "1",
          isAlert: false,
          imageUrl:
              "https://m.media-amazon.com/images/I/61kJhbdIAeL._AC_SX679_.jpg",
        ),
        PlantTile(
          plantName: "Birder Proimis",
          daysToWater: "6",
          isAlert: false,
          imageUrl:
              "https://m.media-amazon.com/images/I/6189j-ddxVL._AC_SX679_.jpg",
        ),
        PlantTile(
          plantName: "Aloe",
          daysToWater: "3",
          isAlert: true,
          imageUrl:
              "https://m.media-amazon.com/images/I/71sEpC0wySL._AC_SX679_.jpg",
        ),
        PlantTile(
          plantName: "Bird Paradise",
          daysToWater: "4",
          isAlert: false,
          imageUrl:
              "https://m.media-amazon.com/images/I/71mIXscmItL._AC_SL1500_.jpg",
        ),
        PlantTile(
          plantName: "Aloete",
          daysToWater: "1",
          isAlert: false,
          imageUrl:
              "https://m.media-amazon.com/images/I/61kJhbdIAeL._AC_SX679_.jpg",
        ),
        PlantTile(
          plantName: "Birder Proimis",
          daysToWater: "6",
          isAlert: false,
          imageUrl:
              "https://m.media-amazon.com/images/I/6189j-ddxVL._AC_SX679_.jpg",
        ),
      ],
    );
  }
}
