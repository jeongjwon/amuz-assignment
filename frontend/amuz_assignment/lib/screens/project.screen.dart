import 'package:amuz_assignment/constants.dart';
import 'package:amuz_assignment/services/portfolio_service.dart';
import 'package:amuz_assignment/widgets/portfolio_list.dart';

import 'package:flutter/material.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  late Future<List<Portfolio>> futurePortfolios;

  @override
  void initState() {
    super.initState();
    futurePortfolios = PortfolioService.getPortfolios();
  }

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
            const SizedBox(height: 20),
            // PortfolioList(),
            FutureBuilder<List<Portfolio>>(
              future: futurePortfolios,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return PortfolioList(portfolios: snapshot.data!);
                  // _buildPortfolioList(snapshot.data!);
                }
              },
            )
          ],
        )),
      ),
    );
  }
}
