import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkCaller {

  static Future<dynamic> getRequest(String url) async {

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    return null;
  }

  static Future<dynamic> postRequest(
      String url, Map body, String token) async {

    final response = await http.post(
      Uri.parse(url),
      headers: {
        "Content-Type": "application/json",
        "token": token
      },
      body: jsonEncode(body),
    );

    return jsonDecode(response.body);
  }
}