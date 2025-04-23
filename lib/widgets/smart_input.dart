import 'package:flutter/material.dart';
import 'package:smart_pots_app/utils/colors.dart';

class SmartInput extends StatelessWidget {
  const SmartInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.teriary,
            prefixIcon: Icon(
              Icons.search,
              color: const Color.fromARGB(255, 150, 149, 149),
            ),
            hintText: "Buscar planta...",
            hintStyle: TextStyle(
                color: const Color.fromARGB(255, 150, 149, 149),
                fontWeight: FontWeight.w700),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
