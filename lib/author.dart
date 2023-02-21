import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class Author extends StatelessWidget {
  Author({this.nom, this.prenom, super.key});

  String? prenom;
  String? nom;

  @override
  Widget build(BuildContext context) {
    return Text([prenom ?? "[prenom]", nom ?? "[nom]"].join(" "));
  }
}
