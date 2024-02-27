import 'package:amuz_assignment/constants.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
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
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Tab(
              child: Text(
                'About',
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Project',
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Search',
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
