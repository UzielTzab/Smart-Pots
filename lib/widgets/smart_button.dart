import 'package:flutter/material.dart';
import 'package:smart_pots_app/utils/colors.dart';

class SmartButton extends StatelessWidget {
  final String textButton;
  const SmartButton({super.key, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style: ButtonStyle(
            iconColor: WidgetStateProperty.all(AppColors.primary),
            backgroundColor: WidgetStateProperty.all(AppColors.secondary)),
        icon: Icon(Icons.water_drop),
        onPressed: () => {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Botón "$textButton" presionado'),
                duration: const Duration(seconds: 2),
              ))
            },
        label: Text(
          textButton,
          style: TextStyle(color: AppColors.primary),
        ));
  }
}
