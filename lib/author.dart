import 'package:flutter/widgets.dart';

class Author extends StatelessWidget {
  const Author({this.nom, this.prenom, super.key});

  final String? prenom;
  final String? nom;

  @override
  Widget build(BuildContext context) {
    return Text([prenom ?? "[prenom]", nom ?? "[nom]"].join(" "));
  }
}
