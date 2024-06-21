import 'dart:convert';
import 'package:flutter/services.dart';


class HomeDataSource {
  Future<Map<String, dynamic>> fetchHomeData() async {
    final String response = await rootBundle.loadString('assets/jsons/dummyData.json');
    return json.decode(response);
  }
}