import 'package:amuz_assignment/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/my_image.jpeg'),
                radius: 100,
              ),
            ),
            const SizedBox(height: 50.0),
            const Text(
              "Jeong Ji Won",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Software Engineer",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: primaryColor,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'FrontEnd Junior ( React / Vue / Flutter )',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    color: whiteColor,
                  ),
                  onPressed: () async {
                    final url = Uri.parse('https://github.com/jeongjwon');
                    await launchUrl(url);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(boxBgColor),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  label: const Text(
                    "GitHub",
                    style: TextStyle(color: whiteColor),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                ElevatedButton.icon(
                  icon: const FaIcon(
                    FontAwesomeIcons.blogger,
                    color: whiteColor,
                  ),
                  onPressed: () async {
                    final url = Uri.parse('https://velog.io/@jeongjwon/posts');
                    await launchUrl(url);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(boxBgColor),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  label: const Text(
                    "Blog",
                    style: TextStyle(color: whiteColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
