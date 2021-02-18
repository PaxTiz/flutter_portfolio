import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/components/custom_button.dart';
import 'package:portfolio/styles.dart';

import '../components/headers.dart';

class WorksScreen extends StatelessWidget {
  WorksScreen({Key key}) : super(key: key);

  final List projects = [
    {
      "title": "Bomberman",
      "description":
          "En tant que projet du semestre 2 de DUT Informatique, nous avions dû réaliser un jeu en groupe de 2. Celui-ci s'inspire du Bomberman originel. Les technologies utiliséee sont Java et JavaFX. Il y a un menu principal, un menu de pause, un menu de mort ainsi que le jeu en lui-même, et il est même possible de recommencer une partie.",
      "image": "game.png",
      "github": "https://github.com/vcernuta/projet-s2-lens",
    },
    {
      "title": "Bomberman",
      "description":
          "En tant que projet du semestre 2 de DUT Informatique, nous avions dû réaliser un jeu en groupe de 2. Celui-ci s'inspire du Bomberman originel. Les technologies utiliséee sont Java et JavaFX. Il y a un menu principal, un menu de pause, un menu de mort ainsi que le jeu en lui-même, et il est même possible de recommencer une partie.",
      "image": "game.png",
      "github": "https://github.com/vcernuta/projet-s2-lens",
    },
    {
      "title": "Bomberman",
      "description":
          "En tant que projet du semestre 2 de DUT Informatique, nous avions dû réaliser un jeu en groupe de 2. Celui-ci s'inspire du Bomberman originel. Les technologies utiliséee sont Java et JavaFX. Il y a un menu principal, un menu de pause, un menu de mort ainsi que le jeu en lui-même, et il est même possible de recommencer une partie.",
      "image": "game.png",
      "github": "https://github.com/vcernuta/projet-s2-lens",
    },
    {
      "title": "Bomberman",
      "description":
          "En tant que projet du semestre 2 de DUT Informatique, nous avions dû réaliser un jeu en groupe de 2. Celui-ci s'inspire du Bomberman originel. Les technologies utiliséee sont Java et JavaFX. Il y a un menu principal, un menu de pause, un menu de mort ainsi que le jeu en lui-même, et il est même possible de recommencer une partie.",
      "image": "game.png",
      "github": "https://github.com/vcernuta/projet-s2-lens",
    },
  ];

  Widget _buildItem(Map item, double itemWidth, BuildContext context) {
    final itemContent = <Widget>[
      H3(item["title"]),
      SizedBox(height: 8),
      Text(item["description"], style: styles["defaultText"]),
      SizedBox(height: 16),
    ];
    if (item.containsKey("github")) {
      itemContent.add(CustomButton(
          text: "Lien vers Github",
          onTap: () {
            print(item["github"]);
          }));
    }
    return Container(
      width: itemWidth,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: DecoratedBox(
              decoration: BoxDecoration(
                backgroundBlendMode: BlendMode.darken,
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage("assets/images/projects/${item["image"]}"),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: itemContent,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final gridItem = MediaQuery.of(context).size.width / 2 - 128 - 16;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(64),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color.fromRGBO(233, 233, 233, 1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H2("Mes projets"),
                SizedBox(height: 32),
                Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: projects.map((e) => this._buildItem(e, gridItem, context)).toList())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
