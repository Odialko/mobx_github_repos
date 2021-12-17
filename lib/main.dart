import 'package:flutter/material.dart';
import 'package:mobx_github_repos/screens/github_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub MobX',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: GitHubScreen(),
    );
  }
}
