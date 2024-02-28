import 'package:amuz_assignment/constants.dart';
import 'package:amuz_assignment/models/certificate.dart';
import 'package:amuz_assignment/models/education.dart';
import 'package:amuz_assignment/models/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              // const Row(
              //   children: [
              //     Text(
              //       'About ',
              //       style: TextStyle(
              //         fontSize: bigTitleSize,
              //         fontWeight: FontWeight.w700,
              //       ),
              //     ),
              //     Text(
              //       'Me',
              //       style: TextStyle(
              //         fontSize: 40,
              //         fontWeight: FontWeight.w700,
              //         color: primaryColor,
              //       ),
              //     ),
              //   ],
              // ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 10,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/my_image.jpeg'),
                      radius: 50,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Jeong Jiwon',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              // const Text(
              //   'Hi, my name is ',
              //   style: TextStyle(
              //     fontSize: smallTextSize,
              //     fontWeight: FontWeight.w700,
              //   ),
              // ),
              // const SizedBox(height: 5),
              // const Text(
              //   'Jeong Jiwon',
              //   style: TextStyle(
              //     color: primaryColor,
              //     fontSize: smallTitleSize,
              //     fontWeight: FontWeight.w800,
              //   ),
              // ),
              const SizedBox(height: 5),
              const Text(
                'I build things for the Web and Application.',
                style: TextStyle(
                  fontSize: smallTextSize,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 50),
              _buildProfile(),
              _buildSkills(context),
              _buildEducation(),
              _buildCertificate(),
            ],
          ),
        ),
      ),
    );
  }
}

// HeadLine Methods:------------------------------------------------------------

Widget _buildAboutMe(BuildContext context) {
  final List<Widget> widgets = skills
      .map((skill) => Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: _buildSkillChip(context, skill),
          ))
      .toList();

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 50.0),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeader('Stacks'),
        const SizedBox(height: 15),
        Wrap(children: widgets),
      ],
    ),
  );
}

// Profile Methods:-----------------------------------------------------------
final profileList = [
  Profile('google', 'zlzlsksk111@gmail.com'),
  Profile('github', 'https://github.com/jeongjwon'),
  Profile('blogger', 'https://velog.io/@jeongjwon/posts'),
];

Widget _buildProfile() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 50.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeader('Profile'),
        const SizedBox(height: 15.0),
        _buildProfileSummary(),
        const SizedBox(height: 20.0),
      ],
    ),
  );
}

Widget _buildProfileSummary() {
  final List<Widget> widgets =
      profileList.map((profile) => _buildProfileTile(profile)).toList();
  return Column(children: widgets);
}

Widget _buildProfileTile(Profile profile) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: [
            FaIcon(mapIcon(profile.icon), size: textSize),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                profile.link,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontSize: smallTextSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

IconData mapIcon(String icon) {
  switch (icon) {
    case 'google':
      return FontAwesomeIcons.google;
    case 'github':
      return FontAwesomeIcons.github;
    case 'blogger':
      return FontAwesomeIcons.blogger;

    default:
      return FontAwesomeIcons.user;
  }
}

// Skills Methods:------------------------------------------------------------
final skills = [
  'Java',
  'JavaScript',
  'TypeScript',
  'React',
  'Redux',
  'Vue',
  'Flutter',
];

Widget _buildSkills(BuildContext context) {
  final List<Widget> widgets = skills
      .map((skill) => Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: _buildSkillChip(context, skill),
          ))
      .toList();

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 50.0),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeader('Stacks'),
        const SizedBox(height: 15),
        Wrap(children: widgets),
      ],
    ),
  );
}

Widget _buildSkillChip(BuildContext context, String label) {
  return Chip(
    label: Text(label,
        style: const TextStyle(
          fontSize: smallTextSize,
          fontWeight: FontWeight.w500,
        )),
  );
}

// Education Methods:------------------------------------------------------------
final educationList = [
  Education(
    '2017.03',
    '2023.02',
    '세종대학교 소프트웨어학과',
  ),
  Education(
    '2023.02',
    '2023.08',
    '코드스테이츠 Software Engineer BootCamp 과정',
  ),
];

Widget _buildEducation() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 50.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeader('Education'),
        const SizedBox(height: 15.0),
        _buildEducationSummary(),
        const SizedBox(height: 20.0),
      ],
    ),
  );
}

Widget _buildEducationSummary() {
  final List<Widget> widgets =
      educationList.map((education) => _buildEducationTile(education)).toList();
  return Column(children: widgets);
}

Widget _buildEducationTile(Education education) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: [
            Text(
              '${education.from} - ${education.to}',
              style: const TextStyle(
                fontSize: smallTextSize,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Text(
                education.organization,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontSize: smallTextSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// Certificate Methods:------------------------------------------------------------
final certificateList = [
  Certificate(
    '2017.11',
    '교내 4회 세종코딩챌린지위크 경시대회 장려상',
  ),
  Certificate(
    '2020.07',
    '한국사능력검정시험 1급',
  ),
  Certificate(
    '2020.11',
    '컴퓨터활용능력 1급',
  ),
  Certificate(
    '2023.02',
    'TOEIC 770점',
  ),
];
Widget _buildCertificate() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 50.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeader('Certiciates'),
        const SizedBox(height: 15.0),
        _buildCertificateSummary(),
        const SizedBox(height: 20.0),
      ],
    ),
  );
}

Widget _buildHeader(String title) {
  return Row(
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: smallTitleSize,
          fontWeight: FontWeight.w900,
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: Container(
          height: 0.7,
          color: whiteColor,
        ),
      ),
    ],
  );
}

Widget _buildCertificateSummary() {
  final List<Widget> widgets = certificateList
      .map((certificate) => _buildCertificateTile(certificate))
      .toList();
  return Column(children: widgets);
}

Widget _buildCertificateTile(Certificate certificate) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: [
            Text(
              certificate.date,
              style: const TextStyle(
                fontSize: smallTextSize,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Text(
                certificate.award,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontSize: smallTextSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
