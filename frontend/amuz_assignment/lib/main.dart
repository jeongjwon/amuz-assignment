import 'package:amuz_assignment/screens/about_screen.dart';
import 'package:amuz_assignment/screens/project_screen.dart';
import 'package:amuz_assignment/screens/search_screen.dart';
import 'package:amuz_assignment/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData.dark(),
      home: const DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            // physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              AboutScreen(),
              ProjectScreen(),
              SearchScreen(),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
