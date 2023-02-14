// ignore_for_file: prefer_const_constructors, unused_local_variable, unnecessary_string_interpolations

import 'package:alquran/app/data/models/surah.dart';
import 'package:alquran/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Surah>>(
          future: controller.getAllSurah(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!snapshot.hasData) {
              Text("Tidak Ada Data");
            }
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  Surah surah = snapshot.data![index];
                  return ListTile(
                    onTap: (){
                      Get.toNamed(Routes.DETAIL_SURAH, arguments: surah);
                    },
                    leading: CircleAvatar(
                      child: Text("${surah.number}"),
                    ),
                    title: Text("${surah.name!.transliteration!.id ?? 'Error...'}"),
                    subtitle: Text("${surah.numberOfVerses} Ayat | ${surah.revelation!.id}"),
                    trailing: Text("${surah.name!.short ?? 'Error...'}"),
                  );
                });
          }),
    );
  }
}
