import 'package:flutter/material.dart';
import 'package:portfolio/components/headers.dart';
import 'package:portfolio/styles.dart';

class SkillsScreen extends StatelessWidget {
  final sks = [
    {"icon": "flutter.png", "title": "Flutter"},
    {"icon": "swift.png", "title": "Swift"},
    {"icon": "apple.png", "title": "macOS / iOS"},
    {"icon": "node.png", "title": "Node.js"},
    {"icon": "react.png", "title": "React.js"},
    {"icon": "vue.png", "title": "Vue.js"},
    {"icon": "laravel.png", "title": "Laravel"},
    {"icon": "java.png", "title": "Java"},
    {"icon": "android.png", "title": "Linux / Android"},
    {"icon": "jetbrains.png", "title": "Jetbrains"},
    {"icon": "mysql.png", "title": "MySQL"},
    {"icon": "xcode.png", "title": "XCode"},
    {"icon": "figma.png", "title": "Figma"}
  ];

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
                H2("Mes compétences"),
                SizedBox(
                  height: 32,
                ),
                GridView.count(
                  crossAxisCount: MediaQuery.of(context).size.width > 1100 ? 3 : 2,
                  shrinkWrap: true,
                  childAspectRatio: MediaQuery.of(context).size.width > 1100 ? 2.5 : 1.5,
                  physics: NeverScrollableScrollPhysics(),
                  children: sks
                      .map((e) => Row(
                            children: [
                              Image.asset(
                                "assets/images/${e['icon']}",
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(
                                width: 32,
                              ),
                              Text(
                                e['title']!,
                                style: styles["defaultText"]!
                                    .copyWith(fontWeight: FontWeight.bold, fontSize: 24),
                              )
                            ],
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
