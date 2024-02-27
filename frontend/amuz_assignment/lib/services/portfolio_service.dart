import 'dart:convert';
import 'package:http/http.dart' as http;

class Portfolio {
  final String title;
  final String description;
  final String stacks;
  final String git;
  final String? blog;
  final String? deploy;
  final String date;
  final String imagePath;

  Portfolio({
    required this.title,
    required this.description,
    required this.stacks,
    required this.git,
    this.blog,
    this.deploy,
    required this.date,
    required this.imagePath,
  });

  factory Portfolio.fromJson(Map<String, dynamic> json) {
    return Portfolio(
      title: json['title'],
      description: json['description'],
      stacks: json['stacks'],
      git: json['git'],
      blog: json['blog'],
      deploy: json['deploy'],
      date: json['date'],
      imagePath: json['image_path'],
    );
  }
}

class PortfolioService {
  static const String baseUrl = 'http://127.0.0.1:8000';

  static Future<List<Portfolio>> getPortfolios() async {
    final response = await http.get(Uri.parse('$baseUrl/api/portfolios'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Portfolio.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load portfolios');
    }
  }

  static Future<List<Portfolio>> searchPortfolio(String searchTerm) async {
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
