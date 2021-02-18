import 'dart:js' as js;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class _Application extends State<Application> with SingleTickerProviderStateMixin {
  List screens;
  TabController controller;

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

  @override
  void initState() {
    screens = <Widget>[
      HomeScreen(onPressed: () {
        setState(() {
          controller.animateTo(1,
              duration: Duration(milliseconds: 500), curve: Curves.elasticInOut);
        });
      }),
      AboutScreen(),
      SkillsScreen(),
      WorksScreen(),
      ResumeScreen(),
      HomeScreen(onPressed: () {
        setState(() {
          controller.animateTo(1);
        });
      })
    ];
    controller = TabController(vsync: this, length: screens.length);
    super.initState();
  }

  // Color.fromRGBO(17, 17, 17, 1)
  @override
  Widget build(BuildContext context) {
    final size = Size(MediaQuery.of(context).size.width, 50);
    return DefaultTabController(
      length: screens.length,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showSnackBar(context),
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
        appBar: PreferredSize(
          preferredSize: size,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Color.fromRGBO(17, 17, 17, 1)),
            child: TabBar(
              overlayColor: MaterialStateProperty.all(Color.fromRGBO(17, 17, 17, .5)),
              labelStyle: styles["defaultText"].copyWith(fontSize: 15, fontWeight: FontWeight.bold),
              physics: BouncingScrollPhysics(),
              controller: controller,
              tabs: [
                Tab(text: "Accueil"),
                Tab(text: "A propos"),
                Tab(text: "Compétences"),
                Tab(text: "Projets"),
                Tab(text: "CV"),
                Tab(text: "Contact"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: screens,
        ),
      ),
    );
  }
}
