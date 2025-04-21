import 'package:flutter/material.dart';

class DiagnosisScreen extends StatelessWidget {
  const DiagnosisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Diagnosis",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
