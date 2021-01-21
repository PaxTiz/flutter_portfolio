import 'package:flutter/material.dart';
import '../styles.dart';

class AppBarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const AppBarButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style:
            styles["defaultText"].copyWith(color: Colors.white, fontSize: 14),
      ),
      color: Color.fromRGBO(17, 17, 17, 1),
      splashColor: Color.fromRGBO(50, 50, 50, 1),
    );
  }
}
