import 'package:flutter/material.dart';
import 'package:portfolio/icons.dart';

import '../styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue.shade300, Colors.blue.shade600],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(32)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 64),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text.toLowerCase(),
                  style: styles["defaultText"]!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 16),
                Icon(RemixIcons.chevron_right, size: 36, color: Colors.white)
              ],
            ),
          ),
        ));
  }
}
