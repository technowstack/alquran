// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:alquran/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Al-Qur'an Apps",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Text(
                "Sesibuk itukah kamu sampai belum membaca alquran ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 300,
              child: Lottie.asset("assets/lotties/animasi-quran.json"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text("GET STARTED"),
            ),
          ],
        ),
      ),
    );
  }
}
