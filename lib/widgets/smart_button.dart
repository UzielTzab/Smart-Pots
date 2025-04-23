import 'package:flutter/material.dart';
import 'package:smart_pots_app/utils/colors.dart';

class SmartButton extends StatelessWidget {
  final String textButton;
  final bool hasIcon;
  final bool isPrimaryButton;
  const SmartButton(
      {super.key,
      required this.textButton,
      required this.hasIcon,
      required this.isPrimaryButton});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton.icon(
          style: isPrimaryButton
              ? ButtonStyle(
                  iconColor: WidgetStateProperty.all(AppColors.primary),
                  backgroundColor: WidgetStateProperty.all(AppColors.secondary))
              : ButtonStyle(
                  iconColor: WidgetStateProperty.all(AppColors.textPrimary),
                  backgroundColor: WidgetStateProperty.all(AppColors.teriary)),
          icon: hasIcon ? Icon(Icons.water_drop) : null,
          onPressed: () => {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Botón "$textButton" presionado'),
                  duration: const Duration(seconds: 2),
                ))
              },
          label: Text(
            textButton,
            style: TextStyle(
                color: isPrimaryButton
                    ? AppColors.primary
                    : AppColors.textPrimary),
          )),
    );
  }
}
