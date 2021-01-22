import 'package:flutter/material.dart';
import '../styles.dart';

class AppBarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const AppBarButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(17, 17, 17, 1),
          shadowColor: Color.fromRGBO(50, 50, 50, 1)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          text,
          style:
              styles["defaultText"].copyWith(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}
