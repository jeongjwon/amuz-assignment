import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[700],
      child: const SizedBox(
        height: 80,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              child: Text(
                'Home',
                style: TextStyle(fontSize: 13),
              ),
            ),
            Tab(
              child: Text(
                'About',
                style: TextStyle(fontSize: 13),
              ),
            ),
            Tab(
              child: Text(
                'Career',
                style: TextStyle(fontSize: 13),
              ),
            ),
            Tab(
              child: Text(
                'Project',
                style: TextStyle(fontSize: 13),
              ),
            ),
            Tab(
              child: Text(
                'Search',
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
