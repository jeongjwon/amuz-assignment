import 'package:amuz_assignment/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkWidget extends StatelessWidget {
  final String label;
  final String? url;

  const LinkWidget({
    Key? key,
    required this.label,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (url != null) {
      return GestureDetector(
        onTap: () async {
          final link = Uri.parse(url!);
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
