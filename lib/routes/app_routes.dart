import 'package:flutter/material.dart';
import 'package:smart_pots_app/screens/app_controller.dart';
import 'package:smart_pots_app/screens/plant_view/plant_view_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String welcome = '/welcome';
  static const String plantView = '/plantView';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const AppController());
      case welcome:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case plantView:
        final args =
            settings.arguments as Map<String, dynamic>; // Recibir argumentos
        return MaterialPageRoute(
          builder: (_) => PlantViewScreen(
            plantName: args['plantName'],
            imageUrl: args['imageUrl'],
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Pantalla no encontrada')),
          ),
        );
    }
  }
}
