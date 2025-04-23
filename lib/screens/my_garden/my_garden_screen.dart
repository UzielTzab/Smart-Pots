import 'package:flutter/material.dart';
import 'package:smart_pots_app/screens/my_garden/my_garden_body.dart';
import 'package:smart_pots_app/screens/my_garden/my_garden_header.dart';
import 'package:smart_pots_app/utils/colors.dart';
import 'package:smart_pots_app/utils/device_resolution.dart';

class MyGardenScreen extends StatelessWidget {
  const MyGardenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: AppColors.primary,
          appBar: AppBar(
            backgroundColor: AppColors.primary,
            toolbarHeight: DeviceResolution.getHeight(context) * 0.12,
            title: Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, right: 40, left: 20, bottom: 20),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Mi jardin",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            bottom: TabBar(
                labelStyle: TextStyle(fontWeight: FontWeight.w700),
                indicator: BoxDecoration(),
                labelColor: AppColors.textPrimary,
                unselectedLabelColor: AppColors.secondary,
                tabs: [
                  Tab(
                    text: "Todas",
                  ),
                  Tab(
                    text: "Interiores",
                  ),
                  Tab(
                    text: "Setas",
                  ),
                  Tab(
                    text: "Exterior",
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            MyGardenBody(),
            MyGardenBody(),
            MyGardenBody(),
            MyGardenBody(),
          ])),
    );
  }
}
