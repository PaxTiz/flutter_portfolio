import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/custom_button.dart';
import 'package:portfolio/styles.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onPressed;
  const HomeScreen({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://4kwallpapers.com/images/wallpapers/macos-big-sur-apple-layers-fluidic-colorful-wwdc-stock-2020-3840x2160-1455.jpg"),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(.8), BlendMode.darken),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 256),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: "Bonjour, je m'appelle Valentin Cernuta \n",
                  style: styles["h2"].copyWith(color: Colors.white),
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text:
                      "Je suis développeur informatique et je viens de Françe 🇫🇷 !",
                  style:
                      styles["h3"].copyWith(color: Colors.white, fontSize: 24),
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
