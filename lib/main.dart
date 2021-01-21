import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/resume_screen.dart';
import 'screens/skills_screen.dart';
import 'components/app_bar_button.dart';
import 'dart:js' as js;


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
        primarySwatch: Colors.blue,
      ),
      home: Application(),
    );
  }
}

class Application extends StatefulWidget {
  createState() => _Application();
}

class _Application extends State<Application> {
  List screens;
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final worksKey = GlobalKey();
  final resumeKey = GlobalKey();
  final contactKey = GlobalKey();

  void goToHome() => Scrollable.ensureVisible(homeKey.currentContext);
  void goToAbout() => Scrollable.ensureVisible(aboutKey.currentContext);
  void goToSkills() => Scrollable.ensureVisible(skillsKey.currentContext);
  void goToWorks() => Scrollable.ensureVisible(worksKey.currentContext);
  void goToResume() => Scrollable.ensureVisible(resumeKey.currentContext);
  void goToContact() => Scrollable.ensureVisible(contactKey.currentContext);

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
      HomeScreen(key: homeKey, onPressed: goToAbout),
      AboutScreen(key: aboutKey),
      SkillsScreen(key: skillsKey),
      HomeScreen(key: worksKey, onPressed: goToAbout),
      ResumeScreen(key: resumeKey),
      HomeScreen(key: contactKey, onPressed: goToAbout),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showSnackBar(context),
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        title: Text("Valentin Cernuta"),
        centerTitle: false,
        backgroundColor: Color.fromRGBO(17, 17, 17, 1),
        actions: [
          AppBarButton(onPressed: goToHome, text: "Accueil"),
          AppBarButton(onPressed: goToAbout, text: "A propos"),
          AppBarButton(onPressed: goToSkills, text: "Compétences"),
          AppBarButton(onPressed: goToWorks, text: "Projets"),
          AppBarButton(onPressed: goToResume, text: "CV"),
          AppBarButton(onPressed: goToContact, text: "Contact"),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: screens,
      ),
    );
  }
}
