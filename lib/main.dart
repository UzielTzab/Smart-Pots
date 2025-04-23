import 'package:flutter/material.dart';
import 'package:smart_pots_app/routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Manrope"),
      title: "Smart Pots",
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
