import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Portfolio {
  final int id;
  final String title;
  final String description;
  final String stacks;
  final String git;
  final String? blog;
  final String? deploy;
  final String date;
  final String imagePath;
  final String roles;
  final String results;

  Portfolio({
    required this.id,
    required this.title,
    required this.description,
    required this.stacks,
    required this.git,
    this.blog,
    this.deploy,
    required this.date,
    required this.imagePath,
    required this.roles,
    required this.results,
  });

  factory Portfolio.fromJson(Map<String, dynamic> json) {
    return Portfolio(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      stacks: json['stacks'],
      git: json['git'],
      blog: json['blog'],
      deploy: json['deploy'],
      date: json['date'],
      imagePath: json['image_path'],
      roles: json['roles'],
      results: json['results'],
    );
  }
}

class PortfolioService {
  static Future<List<Portfolio>> getPortfolios() async {
    await dotenv.load();

    // 54번째 줄 주석처리,
    String baseUrl = dotenv.get("PROJECT_URL");
    // 56번째 줄 주석해제후 각 컴퓨터의 IP주소:8000으로 변경시켜 시도해주세요.
    // String baseUrl = 'http://127.0.0.1:8000';

    final response = await http.get(Uri.parse('$baseUrl/api/portfolios'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Portfolio.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load portfolios');
    }
  }

  static Future<List<Portfolio>> searchPortfolio(String searchTerm) async {
    await dotenv.load();

    // 72번째 줄 주석처리,
    String baseUrl = dotenv.get("PROJECT_URL");
    // 74번째 줄 주석해제후 각 컴퓨터의 IP주소:8000으로 변경시켜 시도해주세요.
    // String baseUrl = 'http://127.0.0.1:8000';

    final response = await http
        .get(Uri.parse('$baseUrl/api/portfolios/search?search=$searchTerm'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Portfolio.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load search results');
    }
  }
}
