import 'package:flutter/material.dart';
import 'package:resume/titre_section.dart';

//#region Import lib

import 'author.dart';
import 'profil_text.dart';
import 'profil_description_ful.dart';

//#endregion
void main() {
  runApp(MyApp(
    titre: "Alternant Développeur web",
  ));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({this.titre, this.needBannerDebug, super.key});

  bool? needBannerDebug;
  String? titre;

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
              title: Text(titre ?? "[titre]"),
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
                    children: <Widget>[
                      Author(nom: "PASTOR ROJAS", prenom: "Angel Daniel"),
                    ],
                  ),
                  const TitreSection("Profil"),
                  const ProfilText(
                    description: "Je suis activement à la recherche ..",
                  ),
                  const ProfilDescription("une autre description")
                ],
              ),
            )));
  }
}
