// ignore_for_file: unnecessary_overrides
import 'dart:convert';
import 'package:get/get.dart';
import 'package:alquran/app/data/models/surah.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  // ignore: todo
  //TODO: Implement HomeController

  Future<List<Surah>> getAllSurah() async {
    Uri url = Uri.parse("https://quran-api-technowstack.vercel.app/surah");
    var res = await http.get(url);

    List? data = (jsonDecode(res.body) as Map<String, dynamic>)["data"];

    if (data == null || data.isEmpty) {
      return [];
    } else {
      return data.map((e) => Surah.fromJson(e)).toList();
    }
  }
}
