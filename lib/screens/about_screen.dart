import 'package:flutter/material.dart';
import 'package:portfolio/components/headers.dart';
import 'package:portfolio/styles.dart';

class AboutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.all(64),
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Color.fromRGBO(233, 233, 233, 1), borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: EdgeInsets.all(64),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H2("A propos de moi"),
                  SizedBox(
                    height: 64,
                  ),
                  Text(
                    "Je m'appelle Valentin Cernuta, j'ai 20 ans et j'habite à Bully-Les-Mines.",
                    style: styles["defaultText"],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Je suis disponble sur les villes de Lens, Arras & Lille.",
                    style: styles["defaultText"],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Je peux parler en français (langue maternelle) et en anglais (niveau B2)",
                    style: styles["defaultText"],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  H3("Licence professionnelle Développement Informatique et Outils Collaboratifs"),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "En cours à l'IUT de Lens depuis septembre 2020",
                    style: styles["defaultText"],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  H3("DUT Informatique"),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Deux années à l'IUT de Lens, de 2018 à 2020",
                    style: styles["defaultText"],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  H3("Baccalauréat technologique Sciences et Technologies de l'Industrie et du Développement Durable"),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Deux années au lycée Edmond Labbé à Douai, de 2016 à 2018",
                    style: styles["defaultText"],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
