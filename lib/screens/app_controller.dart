import 'package:flutter/material.dart';
import 'package:smart_pots_app/screens/diagnosis/diagnosis_screen.dart';
import 'package:smart_pots_app/screens/home/home_screen.dart';
import 'package:smart_pots_app/screens/my_garden/my_garden_screen.dart';
import 'package:smart_pots_app/screens/settings/settings_screen.dart';
import 'package:smart_pots_app/utils/colors.dart';

class AppController extends StatelessWidget {
  const AppController({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: const TabBarView(children: [
          HomeScreen(),
          MyGardenScreen(),
          Placeholder(),
          DiagnosisScreen(),
          SettingsScreen(),
        ]),
        bottomNavigationBar: TabBar(
          labelColor: AppColors.textPrimary,
          unselectedLabelColor: AppColors.secondary,
          indicator: const BoxDecoration(),
          tabs: [
            Tab(text: "Inicio", icon: Icon(Icons.home)),
            Tab(text: "Jardin", icon: Icon(Icons.grass)),
            Tab(text: "Cámara", icon: Icon(Icons.camera_alt_outlined)),
            Tab(
                text: "Diagnóstico",
                icon: Icon(Icons.health_and_safety_outlined)),
            Tab(text: "Vincular", icon: Icon(Icons.connected_tv_outlined)),
          ],
        ),
      ),
    );
  }
}
