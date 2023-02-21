import 'package:flutter/material.dart';

class TitreSection extends StatelessWidget {
  const TitreSection(this.titre, {super.key});

  final String titre;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: titre,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.blue,
          letterSpacing: 2,
        ),
      ),
    );
  }
}
