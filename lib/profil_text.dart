import 'package:flutter/material.dart';

class ProfilText extends StatelessWidget {
  const ProfilText(this.description, {super.key});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(description);
  }
}
