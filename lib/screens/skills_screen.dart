import 'package:flutter/material.dart';
import 'package:portfolio/components/headers.dart';
import 'package:portfolio/styles.dart';

class SkillsScreen extends StatelessWidget {
  SkillsScreen({Key key}) : super(key: key);

  final sks = [
    {
      "icon":
          "https://strattonapps.com/wp-content/uploads/2020/02/flutter-logo-5086DD11C5-seeklogo.com_.png",
      "title": "Flutter"
    },
    {
      "icon":
          "https://i.pinimg.com/originals/8f/50/63/8f50630ae0e1775196e4c270c573ce67.png",
      "title": "Swift"
    },
    {
      "icon":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/505px-Apple_logo_black.svg.png",
      "title": "macOS / iOS"
    },
    {
      "icon":
          "https://humancoders-formations.s3.amazonaws.com/uploads/course/logo/14/formation-node-js.png",
      "title": "Node.js"
    },
    {
      "icon": "https://cdn.auth0.com/blog/react-js/react.png",
      "title": "React.js"
    },
    {
      "icon":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue.js_Logo_2.svg/1184px-Vue.js_Logo_2.svg.png",
      "title": "Vue.js"
    },
    {
      "icon":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Laravel.svg/1200px-Laravel.svg.png",
      "title": "Laravel"
    },
    {
      "icon":
          "https://upload.wikimedia.org/wikipedia/fr/thumb/2/2e/Java_Logo.svg/1200px-Java_Logo.svg.png",
      "title": "Java"
    },
    {
      "icon":
          "https://upload.wikimedia.org/wikipedia/commons/8/82/Android_logo_2019.svg",
      "title": "Linux / Android"
    },
    {
      "icon": "https://www.jetbrains.com/company/brand/img/jetbrains_logo.png",
      "title": "Jetbrains"
    },
    {
      "icon":
          "https://upload.wikimedia.org/wikipedia/fr/thumb/6/62/MySQL.svg/1200px-MySQL.svg.png",
      "title": "MySQL"
    },
    {
      "icon": "https://img.icons8.com/color/452/firebase.png",
      "title": "Firebase"
    },
    {
      "icon":
          "https://media.vlpt.us/images/everytime79/post/6045fcd4-b446-45f9-a8ba-73425cd0e201/xcode.png",
      "title": "XCode",
    },
    {
      "icon": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/1024px-Git_icon.svg.png",
      "title": "Git",
    },
    {
      "icon":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Adobe_XD_CC_icon.svg/1200px-Adobe_XD_CC_icon.svg.png",
      "title": "Adobe XD",
    },
    {
      "icon": "https://miro.medium.com/max/670/0*UTBrDcrJ6SbePBzR",
      "title": "Figma",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              H2("Mes compétences"),
              SizedBox(
                height: 32,
              ),
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                childAspectRatio: 2.5,
                physics: NeverScrollableScrollPhysics(),
                children: sks
                    .map((e) => Row(
                          children: [
                            Image.network(
                              e['icon'],
                              width: 80,
                              height: 80,
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Text(
                              e['title'],
                              style: styles["defaultText"].copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            )
                          ],
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
