import 'package:flutter/material.dart';
import 'package:resume/titre_section.dart';

import 'author.dart';
import 'profil_text.dart';
import 'profil_description_ful.dart';

void main() {
  runApp(const MyApp(
    titre: "Alternant Développeur web",
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({this.titre, this.needBannerDebug, super.key});

  final bool? needBannerDebug;
  final String? titre;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: needBannerDebug ?? false,
      title: 'Resume',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            titre ?? "[titre]",
          ),
        ),
        // backgroundColor: Colors.red,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Author(
                    nom: "PASTOR ROJAS",
                    prenom: "Angel Daniel",
                  ),
                ],
              ),
              const TitreSection(
                "PROFIL",
              ),
              const ProfilText(
                "Je suis activement à la recherche ..",
              ),
              const ProfilDescription(
                "une autre description",
              )
            ],
          ),
        ),
      ),
    );
  }
}
