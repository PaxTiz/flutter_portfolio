import 'dart:js' as js;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icons.dart';
import 'screens/about_screen.dart';
import 'screens/home_screen.dart';
import 'screens/resume_screen.dart';
import 'screens/skills_screen.dart';
import 'screens/works_screen.dart';
import 'styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.blue,
      ),
      home: Application(),
    );
  }
}

class Application extends StatefulWidget {
  createState() => _Application();
}

class _Application extends State<Application>
    with SingleTickerProviderStateMixin {
  late List<Widget> screens;
  late TabController controller;
  List<Map> navItems = [
    {"text": "Accueil", "icon": RemixIcons.home},
    {"text": "A propos", "icon": RemixIcons.about},
    {"text": "Compétences", "icon": RemixIcons.skills},
    {"text": "Projets", "icon": RemixIcons.projects},
    {"text": "CV", "icon": RemixIcons.resume},
    {"text": "Contact", "icon": RemixIcons.location}
  ];

  void _showSnackBar(BuildContext context) {
    final snack = SnackBar(
      content: Text("Application réalisée avec Flutter Web"),
      action: SnackBarAction(
        label: "En savoir plus sur https://flutter.dev",
        onPressed: () => js.context.callMethod('open', ['http://flutter.dev']),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snack);
  }

  void _scrollTo(int i) => controller.animateTo(i,
      duration: Duration(milliseconds: 500), curve: Curves.elasticInOut);

  Widget _buildResponsiveNavigation(Size size) {
    if (size.width > 1000) {
      return PreferredSize(
        preferredSize: size,
        child: DecoratedBox(
          decoration: BoxDecoration(color: Color.fromRGBO(17, 17, 17, 1)),
          child: TabBar(
            overlayColor:
                MaterialStateProperty.all(Color.fromRGBO(17, 17, 17, .5)),
            labelStyle: styles["defaultText"]!
                .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
            physics: BouncingScrollPhysics(),
            controller: controller,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(RemixIcons.home),
                    SizedBox(width: 16),
                    Text("Accueil")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(RemixIcons.about),
                    SizedBox(width: 16),
                    Text("A propos")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(RemixIcons.skills),
                    SizedBox(width: 16),
                    Text("Compétences")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(RemixIcons.projects),
                    SizedBox(width: 16),
                    Text("Projets")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(RemixIcons.resume),
                    SizedBox(width: 16),
                    Text("CV")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(RemixIcons.location),
                    SizedBox(width: 16),
                    Text("Contact")
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Drawer(
      child: ListView(
        children: navItems.map((e) => ListTile(
          title: Text(e['text']),
          leading: Icon(e['icon']),
          onTap: () => _scrollTo(navItems.indexOf(e)),
        )).toList(),
      ),
    );
  }

  @override
  void initState() {
    screens = <Widget>[
      HomeScreen(onPressed: () => _scrollTo(1)),
      AboutScreen(),
      SkillsScreen(),
      WorksScreen(),
      ResumeScreen(),
      HomeScreen(onPressed: () => _scrollTo(1))
    ];
    controller = TabController(vsync: this, length: screens.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = Size(MediaQuery.of(context).size.width, 50);
    final navigation = _buildResponsiveNavigation(size);

    return DefaultTabController(
      length: screens.length,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showSnackBar(context),
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
        appBar: navigation is PreferredSize ? navigation : AppBar(),
        drawer: navigation is Drawer ? navigation : null,
        body: TabBarView(
          controller: controller,
          children: screens,
        ),
      ),
    );
  }
}
