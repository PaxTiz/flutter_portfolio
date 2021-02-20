import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/custom_button.dart';
import 'package:portfolio/styles.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onPressed;
  const HomeScreen({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/home.jpg"),
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(.8), BlendMode.darken),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: "Bonjour, je m'appelle Valentin Cernuta \n",
                  style: styles["h2"]!.copyWith(color: Colors.white),
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text:
                      "Bienvenue sur mon portfolio, vous pourrez y découvrir qui je suis ainsi que mes compétences !",
                  style: styles["h3"]!.copyWith(color: Colors.white, fontSize: 24),
                )
              ]),
            ),
            SizedBox(
              height: 64,
            ),
            CustomButton(text: "En savoir plus", onTap: onPressed)
          ],
        ),
      ),
    );
  }
}
