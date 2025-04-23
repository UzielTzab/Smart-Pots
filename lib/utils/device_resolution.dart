import 'package:flutter/material.dart';

class DeviceResolution {
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width; // Obtiene el ancho de la pantalla
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height; // Obtiene el alto de la pantalla
  }
}
