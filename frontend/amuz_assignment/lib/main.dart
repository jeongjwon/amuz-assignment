import 'package:amuz_assignment/screens/about_screen.dart';
import 'package:amuz_assignment/screens/career_screen.dart';
import 'package:amuz_assignment/screens/project.screen.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
            children: <Widget>[
              HomeScreen(),
              AboutScreen(),
              CareerScreen(),
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
