import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class IsiController extends GetxController {
  //TODO: Implement IsiController
  String _giftType = 'direct_transfer';
  String get giftType => _giftType;
  Rx<PageController> pageController = PageController().obs;
  RxBool isPlaying = false.obs;
  RxInt activePage = 0.obs;
  RxList loveStorys = [
    {
      'date': '2021',
      'title': 'The first time we met was at a coffee shop',
      'image': 'assets/images/DewiMayangFadillah.jpg',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sollicitudin orci risus. Integer vel facilisis metus, vitae auctor lectus. Fusce sed enim interdum, vulputate quam nec, suscipit dui. Praesent mollis justo quam, sed malesuada nisl rutrum sit amet. Quisque fringilla velit erat, vel finibus tortor aliquam eu. Maecenas vitae enim ante. Mauris vitae dolor erat. Mauris viverra, mauris eget pretium pretium, quam nulla porttitor felis, et fringilla nisi magna eget leo. Aenean et accumsan tellus, sit amet lobortis massa. Fusce maximus tortor mi. Praesent vel urna semper, ullamcorper velit dapibus, vulputate neque.',
    },
    {
      'date': '2022',
      'title': 'We are in a long-distance relationship',
      'image': 'assets/images/DewiMayangFadillah.jpg',
      'description':
          'Suspendisse varius non ante a sagittis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla rhoncus libero in tempus tincidunt. Morbi non iaculis nibh, ac vehicula mauris. Curabitur pellentesque ante tellus, eget feugiat lacus interdum id. Pellentesque suscipit eleifend metus ac molestie. Morbi tincidunt accumsan leo, nec egestas magna auctor et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris in luctus mi. Aliquam ornare dolor vitae ipsum posuere tempor. In id sollicitudin erat. Nullam auctor finibus nulla, et semper ligula fringilla eu. Integer consequat felis ante, id tincidunt ipsum hendrerit a. Suspendisse ac turpis viverra, luctus lacus sed, faucibus tellus.',
    },
    {
      'date': '2023',
      'title': 'We decided to get engaged',
      'image': 'assets/images/DewiMayangFadillah.jpg',
      'description':
          'Nullam faucibus, leo ut mattis auctor, urna velit finibus elit, vitae tincidunt est ipsum in mi. Nunc sit amet accumsan nunc. Suspendisse viverra, felis ut maximus luctus, nisl magna fringilla nunc, elementum ultrices sem urna ut dolor. Aenean venenatis justo in nulla blandit, vitae commodo leo fringilla. Nam euismod, sem varius pellentesque finibus, urna dolor tristique sem, eget venenatis arcu erat id dolor. Donec a odio eu tellus ultrices iaculis at at ex. Nulla sollicitudin pretium sem et mattis.',
    },
    {
      'date': '2024',
      'title': 'We will get married soon, on May 5, 2024',
      'image': 'assets/images/AlanAgusNawan.jpg',
      'description':
          'Vivamus at tempor massa. Donec efficitur pharetra malesuada. Praesent molestie vehicula est at rhoncus. Etiam blandit sagittis sapien, nec rhoncus magna rhoncus eget. Integer nulla nibh, volutpat vitae sem non, viverra auctor dolor. Mauris rhoncus, libero sed pulvinar dignissim, augue sem dapibus tellus, quis varius turpis nunc ut odio. Phasellus justo ante, ornare quis fringilla id, ultricies eget mauris. Vestibulum at dictum ex, sit amet egestas risus. Cras hendrerit orci tortor, pretium vehicula elit vehicula ut. Vestibulum magna ex, lobortis in ante bibendum, iaculis mollis purus. Vivamus molestie fermentum euismod.',
    }
  ].obs;
  RxList comments = [].obs;
  RxList rspv = [].obs;
  RxInt hadir = 0.obs;
  RxString Tombol = 'Kirim'.obs;
  Rx<TextEditingController> name = TextEditingController().obs;
  Rx<TextEditingController> address = TextEditingController().obs;
  Rx<TextEditingController> wishes = TextEditingController().obs;

  void setGiftType(String type) {
    _giftType = type;
    print('The gift type is ' + _giftType);
    update();
  }

  @override
  void onInit() async {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    await player.play(
        AssetSource('assets/audio/MarryYourDaughterSaxCoverbyDesmondAmos.wav'));
    pageController.value = PageController(viewportFraction: 0.8);
    super.onInit();
  }

  @override
  void onReady() async {
    DatabaseReference ref = FirebaseDatabase.instance.ref();
    await ref.child('comment').onValue.listen((event) async {
      // comments.value = [event.snapshot.value];
      for (final child in event.snapshot.children) {
        comments.add(child.value);
      }
      print(comments);
    });
    // await ref.child('hadir').onValue.listen((event) async {
    //   // hadir.value = int.parse('${event.snapshot.value}');
    //   for (final child in event.snapshot.children) {
    //     rspv.add(child.value);
    //   }
    // });
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
