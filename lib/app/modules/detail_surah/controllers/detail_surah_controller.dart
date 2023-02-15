import 'dart:convert';

import 'package:alquran/app/data/models/detail_surah.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailSurahController extends GetxController {
  //TODO: Implement DetailSurahController

  Future<DetailSurah> getDetailSurah(String id) async {
    Uri url = Uri.parse("https://quran-api-technowstack.vercel.app/surah/$id");
    var res = await http.get(url);

    Map<String,dynamic> data = (jsonDecode(res.body) as Map<String, dynamic>)["data"];

    return DetailSurah.fromJson(data);
  }
}
