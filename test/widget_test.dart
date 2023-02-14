import 'dart:convert';

import 'package:alquran/app/data/models/surah.dart';
import 'package:http/http.dart' as http;

void main() async{
  Uri url = Uri.parse("https://quran-api-technowstack.vercel.app/surah");
   var res = await http.get(url);

   var data = (jsonDecode(res.body) as Map<String, dynamic>)["data"];

   //print(data[113]["number"]);

   Surah surahAnnas = Surah.fromJson(data[113]);

   print(surahAnnas.toJson());
}