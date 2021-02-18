import 'dart:ui';

import 'package:flutter/material.dart';

import '../components/headers.dart';

class WorksScreen extends StatelessWidget {
  const WorksScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                SizedBox(
                  height: 32,
                ),
                GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: 1,
                    physics: NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 300,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  backgroundBlendMode: BlendMode.darken,
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/game.png"),
                                      fit: BoxFit.contain),
                                ),
                                child: Text("Coucou"),
                              ),
                            ),
                            Text("Yolooo")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 300,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  backgroundBlendMode: BlendMode.darken,
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/game.png"),
                                      fit: BoxFit.contain),
                                ),
                                child: Text("Coucou"),
                              ),
                            ),
                            Text("Yolooo")
                          ],
                        ),
                      )
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
