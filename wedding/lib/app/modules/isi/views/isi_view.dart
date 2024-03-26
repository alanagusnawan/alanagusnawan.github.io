import 'dart:math';
import 'dart:ui';

import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:async';
import 'dart:js' as js;
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:wedding/firebase_options.dart';

import '../controllers/isi_controller.dart';
part 'ayat_quran_view.dart';
part 'countdown_view.dart';
part 'coupleprofile_view.dart';
part 'galleries_view.dart';
part 'gift_view.dart';
part 'invitation_view.dart';
part 'lovestory_view.dart';
part 'maps_view.dart';
part 'rspv_view.dart';
part 'rundown_view.dart';
part 'wishes_view.dart';

class IsiView extends GetView<IsiController> {
  const IsiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.isPlaying.isFalse
              ? SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 0.05 * MediaQuery.of(context).size.width,
                    ),
                    child: Column(
                      children: [
                        AyatQuranView(),
                        CoupleprofileView(),
                        LovestoryView(),
                        GalleriesView(),
                        CountdownView(),
                        RundownView(),
                        MapsView(),
                        RspvView(),
                        WishesView(),
                        InvitationView(),
                      ],
                    ),
                  ),
                )
              : GestureDetector(
                  onHorizontalDragEnd: (DragEndDetails drag) {
                    if (drag.primaryVelocity == null) return;
                    if (drag.primaryVelocity! < 0) {
                      if (controller.activePage.value == 0) {
                        controller.activePage.value = 3;
                      } else {
                        controller.activePage.value -= 1;
                      }
                    } else {
                      if (controller.activePage.value == 3) {
                        controller.activePage.value = 0;
                      } else {
                        controller.activePage.value += 1;
                      }
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              controller.loveStorys[controller.activePage.value]
                                  ['image']),
                          fit: BoxFit.fill),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () => controller.isPlaying.value = false,
                              child: Icon(
                                Icons.close,
                                size: 0.05 * MediaQuery.of(context).size.width,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal:
                                    0.05 * MediaQuery.of(context).size.width,
                                vertical:
                                    0.01 * MediaQuery.of(context).size.height,
                              ),
                              child: Text(
                                  controller.loveStorys[
                                      controller.activePage.value]['title'],
                                  style: TextStyle(
                                      fontFamily: 'Josefin',
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .fontSize)),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 0.05 * MediaQuery.of(context).size.width,
                                right: 0.05 * MediaQuery.of(context).size.width,
                                bottom:
                                    0.05 * MediaQuery.of(context).size.height,
                              ),
                              child: Text(
                                  controller.loveStorys[controller
                                      .activePage.value]['description'],
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontFamily: 'Josefin',
                                      color: Colors.white,
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .fontSize)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
          bottomSheet: GiftView(),
        ));
  }
}
