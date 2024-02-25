import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/undangan_controller.dart';

class UndanganView extends GetView<UndanganController> {
  const UndanganView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 2), (timer) {
      controller.opacityLevel.value = 1.0;
    });
    return Stack(
      children: [
        Image.asset(
          "assets/images/background-invitation.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
              horizontal: 0.01 * MediaQuery.of(context).size.width,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "THE WEDDING OF",
                  style: TextStyle(
                      fontFamily: 'Josefin',
                      color: Color(0xff929EAD),
                      fontSize:
                      Theme.of(context).textTheme.titleLarge!.fontSize),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://api.our-wedding.link/uploads/66530f70-c502-11ee-86b9-050ab65d5f7b.jpg"),
                  radius: 0.1 * MediaQuery.of(context).size.height,
                ),
                Text("Mayang & Alan",
                    style: TextStyle(
                        fontFamily: 'Sacramento',
                        color: Color(0xff929EAD),
                        fontSize:
                        Theme.of(context).textTheme.displayMedium!.fontSize)),
                Text(
                  "Dear",
                  style: TextStyle(
                      fontFamily: 'Josefin',
                      color: Color(0xff929EAD),
                      fontSize:
                      Theme.of(context).textTheme.titleLarge!.fontSize),
                ),
                Text(
                  "${Get.parameters['name']}",
                  style: TextStyle(
                      fontFamily: 'Josefin',
                      color: Color(0xff929EAD),
                      fontSize:
                      Theme.of(context).textTheme.titleLarge!.fontSize,
                      fontWeight: FontWeight.bold),
                ),
                AnimatedOpacity(
                  opacity: controller.opacityLevel.value,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 0.05 * MediaQuery.of(context).size.width, vertical: 0.01 * MediaQuery.of(context).size.width),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff929EAD), width: 1),
                    ),
                    child: Text(
                      "Buka Undangan",
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Color(0xff929EAD),
                          fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
