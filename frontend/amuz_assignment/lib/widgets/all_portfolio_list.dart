import 'package:amuz_assignment/services/portfolio_service.dart';
import 'package:flutter/material.dart';
import 'package:amuz_assignment/constants.dart';
import 'package:amuz_assignment/screens/detail_screen.dart';
import 'package:amuz_assignment/widgets/link_widget.dart';
import 'package:amuz_assignment/widgets/skill_widget.dart';

class AllPortfolioList extends StatefulWidget {
  const AllPortfolioList({super.key});

  @override
  _AllPortfolioListState createState() => _AllPortfolioListState();
}

class _AllPortfolioListState extends State<AllPortfolioList> {
  late Future<List<Portfolio>> futurePortfolios;

  @override
  void initState() {
    super.initState();

    futurePortfolios = PortfolioService.getPortfolios();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Portfolio>>(
      future: futurePortfolios,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return SingleChildScrollView(
              child: Column(
                  children: snapshot.data!.asMap().entries.map((entry) {
            final index = entry.key + 1;
            final portfolio = entry.value;

            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              portfolio: portfolio,
                            )),
                  );
                },
                child: _buildProjectTile(portfolio, index));
          }).toList()));
        }
      },
    );
  }
}

Widget _buildProjectTile(Portfolio portfolio, int index) {
  EdgeInsets contentPadding = index == 1
      ? const EdgeInsets.fromLTRB(0, 30, 0, 80)
      : const EdgeInsets.symmetric(vertical: 80);

  return ListTile(
      contentPadding: contentPadding,
      title: _buildProjectTitle(portfolio, index),
      subtitle: _buildProjectSubTitle(portfolio, index));
}

Widget _buildProjectTitle(Portfolio portfolio, int index) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    children: [
      Text(
        index.toString(),
        style: const TextStyle(
          fontSize: bigTitleSize,
          fontWeight: FontWeight.w800,
        ),
      ),
      const SizedBox(width: 10),
      Text(
        portfolio.title,
        style: const TextStyle(
          fontSize: smallTitleSize,
          fontWeight: FontWeight.w800,
        ),
      ),
      const SizedBox(width: 20),
      Text(
        portfolio.date,
        style: const TextStyle(
          fontSize: smallTextSize,
          fontWeight: FontWeight.w600,
        ),
      )
    ],
  );
}

Widget _buildProjectSubTitle(Portfolio portfolio, int index) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 10),
      ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Image.network(
          portfolio.imagePath,
        ),
      ),
      const SizedBox(height: 10),
      Text(
        portfolio.description,
        style: const TextStyle(
          fontSize: smallTextSize,
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
      ),
      SkillWidget(stackArray: portfolio.stacks),
      Row(
        children: [
          LinkWidget(label: 'Github', url: portfolio.git),
          LinkWidget(label: 'Blog', url: portfolio.blog),
          LinkWidget(label: 'Deploy', url: portfolio.deploy),
        ],
      ),
    ],
  );
}
