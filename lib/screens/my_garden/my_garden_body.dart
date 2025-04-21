import 'package:flutter/material.dart';
import 'package:smart_pots_app/widgets/plants_tile.dart';

class MyGardenBody extends StatelessWidget {
  const MyGardenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Row(
            children: [
              Icon(
                Icons.search_outlined,
                size: 32,
              )
            ],
          ),
        ),
        ListOfPlants(),
      ],
    );
  }
}

class ListOfPlants extends StatelessWidget {
  const ListOfPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlantsTile(
          plantName: "Aloe",
          daysToWater: "3",
          isAlert: true,
          imageUrl:
              "https://m.media-amazon.com/images/I/71sEpC0wySL._AC_SX679_.jpg",
        ),
        PlantsTile(
          plantName: "Bird Paradise",
          daysToWater: "4",
          isAlert: false,
          imageUrl:
              "https://m.media-amazon.com/images/I/71mIXscmItL._AC_SL1500_.jpg",
        ),
        PlantsTile(
          plantName: "Aloe",
          daysToWater: "1",
          isAlert: false,
          imageUrl:
              "https://m.media-amazon.com/images/I/61kJhbdIAeL._AC_SX679_.jpg",
        ),
        PlantsTile(
          plantName: "Bird Paradise",
          daysToWater: "6",
          isAlert: false,
          imageUrl:
              "https://m.media-amazon.com/images/I/6189j-ddxVL._AC_SX679_.jpg",
        ),
      ],
    );
  }
}
