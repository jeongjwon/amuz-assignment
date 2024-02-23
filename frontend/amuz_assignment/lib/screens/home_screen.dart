import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '내 이름: 홍길동',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              '직업: 소프트웨어 엔지니어',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              '경력: 5년',
              style: TextStyle(fontSize: 24.0),
            ),
            // 여기에 필요한 정보들을 추가할 수 있습니다.
          ],
        ),
      ),
    );
  }
}
