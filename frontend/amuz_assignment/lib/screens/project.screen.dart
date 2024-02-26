import 'package:amuz_assignment/constants.dart';
import 'package:amuz_assignment/widgets/portfolio_list.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Text(
              'My Projects',
              style: TextStyle(
                color: primaryColor,
                fontSize: 25.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 20),
            PortfolioList(),
          ],
        )),
      ),
    );
  }
}
