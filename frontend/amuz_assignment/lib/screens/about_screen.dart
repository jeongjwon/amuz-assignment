import 'dart:ffi';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
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
              const SizedBox(height: 30),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft, // 왼쪽 정렬을 설정합니다.
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              FaIcon(FontAwesomeIcons.google),
                              SizedBox(width: 10),
                              Text('zlzlsksk111@gmail.com')
                            ],
                          ),
                          Row(
                            children: [
                              FaIcon(FontAwesomeIcons.github),
                              SizedBox(width: 10),
                              Text('https://github.com/jeongjwon')
                            ],
                          ),
                          Row(
                            children: [
                              FaIcon(FontAwesomeIcons.blogger),
                              SizedBox(width: 10),
                              Text('zlzlsksk111@gmail.com')
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft, // 왼쪽 정렬을 설정합니다.
                        child: Text(
                          'Stacks',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Text(
                              '[ 프로그래밍 언어 ]  Javascript, Typescript, HTML, CSS, Java, Flutter, Vue'),
                          Text(
                              '[ 프레임워크 & 라이브러리 ]  React, Redux , Redux-Toolkit, Styled-components'),
                          Text('[ DB & 서버 ] Node.js , MySQL, Postman'),
                          Text(
                              '[ Others ] Git, Notion, VS Code, Eclipse, Android Studio'),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft, // 왼쪽 정렬을 설정합니다.
                        child: Text(
                          'Education',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('2017.03 - 2023.02'),
                              SizedBox(
                                width: 20,
                              ),
                              Text('세종대학교 소프트웨어학과')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text('2023.02 - 2023.08'),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  '코드스테이츠 Software Engineer BootCamp 과정',
                                  overflow: TextOverflow.clip,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft, // 왼쪽 정렬을 설정합니다.
                        child: Text(
                          'Certificates',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('2020.11'),
                              SizedBox(
                                width: 20,
                              ),
                              Text('컴퓨터 활용 능력 1급')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('2023.02'),
                              SizedBox(
                                width: 20,
                              ),
                              Text('TOEIC 770점')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
