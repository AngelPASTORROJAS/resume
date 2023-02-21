import 'package:flutter/material.dart';

class ProfilDescription extends StatefulWidget {
  const ProfilDescription(this.description, {super.key});

  final String description;

  @override
  State<ProfilDescription> createState() => _ProfilDescriptionState();
}

class _ProfilDescriptionState extends State<ProfilDescription> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Text(widget.description);
  }
}
