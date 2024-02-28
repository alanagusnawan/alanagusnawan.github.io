import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wedding/app/modules/isi/views/countdown_view.dart';

import '../controllers/isi_controller.dart';
import 'ayat_quran_view.dart';

class IsiView extends GetView<IsiController> {
  const IsiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    player.play(AssetSource('assets/audio/MarryYourDaughterSaxCoverbyDesmondAmos.wav'));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AyatQuranView(),
            CountdownView()
          ],
        ),
      ),
    );
  }
}
