import 'package:flutter/material.dart';
import 'package:portfolio/components/custom_button.dart';
import 'package:portfolio/components/headers.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 128),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          H2("Mon CV"),
          SizedBox(
            height: 64,
          ),
          CustomButton(text: "télécharger en pdf", onTap: null)
        ],
      ),
    );
  }
}
