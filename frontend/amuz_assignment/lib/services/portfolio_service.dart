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
    String baseUrl = dotenv.get("PROJECT_URL");
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
    String baseUrl = dotenv.get("PROJECT_URL");
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
