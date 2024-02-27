import 'package:amuz_assignment/constants.dart';
import 'package:amuz_assignment/services/portfolio_service.dart';
import 'package:amuz_assignment/widgets/link_widget.dart';
import 'package:amuz_assignment/widgets/skill_widget.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Portfolio portfolio;

  const DetailScreen({
    Key? key,
    required this.portfolio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          portfolio.title,
          style: const TextStyle(
              color: primaryColor,
              fontSize: smallTitleSize,
              fontWeight: FontWeight.w700),
        ),
        foregroundColor: primaryColor,
        elevation: 0,
        backgroundColor: Theme.of(context).dialogBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        portfolio.date,
                        style: const TextStyle(
                          fontSize: textSize,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        ),
                      ),
                      Row(
                        children: [
                          LinkWidget(label: 'Github', url: portfolio.git),
                          LinkWidget(label: 'Blog', url: portfolio.blog),
                          LinkWidget(label: 'Deploy', url: portfolio.deploy),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(portfolio.imagePath),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        portfolio.description,
                        style: const TextStyle(
                          fontSize: smallTextSize,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      _buildTitle('⚙️', '사용 스택'),
                      // _buildSkills(portfolio.stacks),
                      SkillWidget(stackArray: portfolio.stacks),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTitle('💡', '기능 구현'),
                      const SizedBox(height: 10.0),
                      _buildList(portfolio.roles),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTitle('✅', '성과'),
                      const SizedBox(height: 10.0),
                      _buildList(portfolio.results),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildList(String string) {
  final splitsArray = string.split(",");
  final List<Widget> widgets = splitsArray
      .map((item) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 7.0),
            child: Row(
              children: [
                const Text(
                  "-  ",
                  style: TextStyle(
                    fontSize: smallTitleSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                    child: Text(
                  item.trim(),
                  style: const TextStyle(
                    fontSize: smallTextSize,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ],
            ),
          ))
      .toList();

  return Column(
    children: widgets,
  );
}

Widget _buildTitle(String icon, String title) {
  return RichText(
    text: TextSpan(
      children: <TextSpan>[
        TextSpan(
          text: '$icon  ',
          style: const TextStyle(
            fontSize: smallTitleSize,
            fontWeight: FontWeight.w700,
            height: 1.5,
          ),
        ),
        TextSpan(
          text: title,
          style: const TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
        ),
      ],
    ),
  );
}
