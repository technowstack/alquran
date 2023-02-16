// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:alquran/app/constants/color.dart';
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
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
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
              height: 70,
            ),
            ClipRRect(
               borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 300,
                height: 300,
                child: Lottie.asset("assets/lotties/animasi-quran.json"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              // ignore: sort_child_properties_last
              child: Text("GET STARTED", style: TextStyle(
                color:  Get.isDarkMode ? appPurpleDark  : appWhite
              ),),
              style: ElevatedButton.styleFrom(
                  primary: Get.isDarkMode ? appWhite :  appPurple,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ],
        ),
      ),
    );
  }
}
