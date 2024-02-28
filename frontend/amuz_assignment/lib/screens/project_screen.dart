import 'package:amuz_assignment/constants.dart';
import 'package:amuz_assignment/widgets/all_portfolio_list.dart';

import 'package:flutter/material.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  bool sortByNewest = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Text(
              'My Projects',
              style: TextStyle(
                color: primaryColor,
                fontSize: 25.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sortByNewest = false;
                    });
                  },
                  child: Text(
                    !sortByNewest ? '• 오래된 순' : '오래된 순',
                    style: TextStyle(
                      color: !sortByNewest ? whiteColor : Colors.grey,
                      fontWeight:
                          !sortByNewest ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sortByNewest = true;
                    });
                  },
                  child: Text(
                    sortByNewest ? '• 최신 순' : '최신 순',
                    style: TextStyle(
                      color: sortByNewest ? whiteColor : Colors.grey,
                      fontWeight:
                          sortByNewest ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            AllPortfolioList(sortByNewest: sortByNewest),
          ],
        )),
      ),
    );
  }
}
