import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthServices {
  static String baseUrl =
      'https://api-pariwisata.rakryan.id/auth';

  static Future<http.Response> register(
    String name,
    String username,
    String password,
  ) async {
    final url = Uri.parse("$baseUrl/register");

    return await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "name": name,
        "username": username,
        "password": password,
      }),
    );
  }

  static Future<http.Response> login(String username, String password) async {
    final url = Uri.parse('$baseUrl/login');

    return await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'username': username, 'password': password}),
    );
  }
}
