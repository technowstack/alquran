import 'dart:convert';

import 'package:alquran/app/data/models/surah.dart';
import 'package:http/http.dart' as http;

Future<List> main() async {
  Uri url = Uri.parse("https://quran-api-technowstack.vercel.app/surah");
  var res = await http.get(url);

  List? data = (jsonDecode(res.body) as Map<String, dynamic>)["data"];

  if (data == null || data.isEmpty) {
    return [];
  } else {
    return data.map((e) => Surah.fromJson(e)).toList();
  }
}
