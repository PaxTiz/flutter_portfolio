import 'package:portfolio/styles.dart';
import 'package:flutter/material.dart';

class H2 extends StatelessWidget {
  final String text;
  const H2(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: styles["h2"]);
  }
}

class H3 extends StatelessWidget {
  final String text;
  const H3(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: styles["h3"]);
  }
}
