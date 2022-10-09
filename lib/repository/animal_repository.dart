import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:ronaldo_template/exception/response_exception.dart';

class AnimalRepository {
  final endPoint = "https://zoo-animal-api.herokuapp.com";

  Future<Map<String, dynamic>> randomAnimal() async {
    final url = Uri.parse("$endPoint/animals/rand");

    var response = await http.get(url);

    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body) as Map<String, dynamic>;
    } else {
      return {};
    }
  }
}
