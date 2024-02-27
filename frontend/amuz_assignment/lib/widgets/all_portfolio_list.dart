import 'package:amuz_assignment/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../services/portfolio_service.dart';

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

            return _buildProjectTile(portfolio, index);
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
      _buildSkills(portfolio.stacks),
      Row(
        children: [
          _buildLinks('Github', portfolio.git),
          _buildLinks('Blog', portfolio.blog),
          _buildLinks('Deploy', portfolio.deploy),
        ],
      ),
    ],
  );
}

Widget _buildSkills(String stackArray) {
  final stacks = stackArray.split(",");
  final List<Widget> widgets = stacks
      .map((stack) => Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: _buildSkillChip(stack),
          ))
      .toList();

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Wrap(children: widgets),
      ],
    ),
  );
}

Widget _buildSkillChip(String label) {
  return Chip(
    label: Text(label,
        style: const TextStyle(
          fontSize: smallTextSize,
          fontWeight: FontWeight.w500,
        )),
  );
}

Widget _buildLinks(String label, String? url) {
  if (url != null) {
    return GestureDetector(
      onTap: () async {
        final link = Uri.parse(url);
        await launchUrl(link);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: FaIcon(
          mapIcon(label),
          color: whiteColor,
        ),
      ),
    );
  } else {
    return const SizedBox();
  }
}

IconData mapIcon(String icon) {
  switch (icon) {
    case 'Deploy':
      return FontAwesomeIcons.link;
    case 'Github':
      return FontAwesomeIcons.github;
    case 'Blog':
      return FontAwesomeIcons.blogger;

    default:
      return FontAwesomeIcons.user;
  }
}
