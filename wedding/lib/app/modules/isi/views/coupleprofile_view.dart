part of 'isi_view.dart';

class CoupleprofileView extends GetView {
  const CoupleprofileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // if (kIsWeb) {
    //   print(kIsWeb);
    //   print("web");
    //   return Container(
    //     height: 0.5 * MediaQuery.of(context).size.height,
    //       margin: EdgeInsets.symmetric(
    //         vertical: 0.05 * MediaQuery.of(context).size.height,
    //       ),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Container(
    //             child: Column(
    //               children: [
    //                 CircleAvatar(
    //                   backgroundImage: AssetImage(
    //                       'assets/images/DewiMayangFadillah.jpg'),
    //                   radius: 0.1 * MediaQuery.of(context).size.height,
    //                 ),
    //                 Text("Dewi Mayang Fadillah A.Md.Kom",
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                         fontFamily: 'Sacramento',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .displaySmall!
    //                             .fontSize)),
    //                 Text("Putri Dari",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Text("Bapak Erdy Haryono & Ibu Dede Sulastri",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Text(
    //                     "Jln. Kencana 1, Desa Banjarwangunan, Kec. Mundu, Kab. Cirebon",
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //               ],
    //             ),
    //           ),
    //           Text("&",
    //               style: TextStyle(
    //                   fontFamily: 'Sacramento',
    //                   color: Colors.red,
    //                   fontSize: Theme.of(context)
    //                       .textTheme
    //                       .displayLarge!
    //                       .fontSize! +
    //                       13)),
    //           Container(
    //             child: Column(
    //               children: [
    //                 CircleAvatar(
    //                   backgroundImage:
    //                   AssetImage('assets/images/AlanAgusNawan.jpg'),
    //                   radius: 0.1 * MediaQuery.of(context).size.height,
    //                 ),
    //                 Text("Alan Agus Nawan S.Kom",
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                         fontFamily: 'Sacramento',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .displaySmall!
    //                             .fontSize)),
    //                 Text("Putra Dari",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Text("Bapak Empep Sujana & Ibu Yati Suryati",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Container(
    //                   margin: EdgeInsets.symmetric(
    //                     horizontal:
    //                     0.05 * MediaQuery.of(context).size.width,
    //                   ),
    //                   child: Text(
    //                       "Jln. Letkol Abdul Gani, Kel. Majalengka Wetan, Kec. Majalengka, Kab. Majalengka",
    //                       textAlign: TextAlign.center,
    //                       style: TextStyle(
    //                           fontFamily: 'Josefin',
    //                           color: Color(0xff929EAD),
    //                           fontSize: Theme.of(context)
    //                               .textTheme
    //                               .bodyLarge!
    //                               .fontSize)),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ));
    // }
    // else if (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android) {
    //   print(defaultTargetPlatform);
    //   print("mobile");
    //   return Container(
    //       margin: EdgeInsets.symmetric(
    //         vertical: 0.05 * MediaQuery.of(context).size.height,
    //       ),
    //       child: Column(
    //         children: [
    //           Container(
    //             child: Column(
    //               children: [
    //                 CircleAvatar(
    //                   backgroundImage: AssetImage(
    //                       'assets/images/DewiMayangFadillah.jpg'),
    //                   radius: 0.1 * MediaQuery.of(context).size.height,
    //                 ),
    //                 Text("Dewi Mayang Fadillah A.Md.Kom",
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                         fontFamily: 'Sacramento',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .displaySmall!
    //                             .fontSize)),
    //                 Text("Putri Dari",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Text("Bapak Erdy Haryono & Ibu Dede Sulastri",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Text(
    //                     "Jln. Kencana 1, Desa Banjarwangunan, Kec. Mundu, Kab. Cirebon",
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //               ],
    //             ),
    //           ),
    //           Text("&",
    //               style: TextStyle(
    //                   fontFamily: 'Sacramento',
    //                   color: Colors.red,
    //                   fontSize: Theme.of(context)
    //                       .textTheme
    //                       .displayLarge!
    //                       .fontSize! +
    //                       13)),
    //           Container(
    //             child: Column(
    //               children: [
    //                 CircleAvatar(
    //                   backgroundImage:
    //                   AssetImage('assets/images/AlanAgusNawan.jpg'),
    //                   radius: 0.1 * MediaQuery.of(context).size.height,
    //                 ),
    //                 Text("Alan Agus Nawan S.Kom",
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                         fontFamily: 'Sacramento',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .displaySmall!
    //                             .fontSize)),
    //                 Text("Putra Dari",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Text("Bapak Empep Sujana & Ibu Yati Suryati",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Container(
    //                   margin: EdgeInsets.symmetric(
    //                     horizontal:
    //                     0.05 * MediaQuery.of(context).size.width,
    //                   ),
    //                   child: Text(
    //                       "Jln. Letkol Abdul Gani, Kel. Majalengka Wetan, Kec. Majalengka, Kab. Majalengka",
    //                       textAlign: TextAlign.center,
    //                       style: TextStyle(
    //                           fontFamily: 'Josefin',
    //                           color: Color(0xff929EAD),
    //                           fontSize: Theme.of(context)
    //                               .textTheme
    //                               .bodyLarge!
    //                               .fontSize)),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ));
    // }
    // else if (defaultTargetPlatform == TargetPlatform.linux || defaultTargetPlatform == TargetPlatform.macOS || defaultTargetPlatform == TargetPlatform.windows || defaultTargetPlatform == TargetPlatform.fuchsia) {
    //   print(defaultTargetPlatform);
    //   print("dekstop");
    //   return Container(
    //       height: 0.5 * MediaQuery.of(context).size.height,
    //       margin: EdgeInsets.symmetric(
    //         vertical: 0.05 * MediaQuery.of(context).size.height,
    //       ),
    //       child: ListView(
    //         shrinkWrap: true,
    //         scrollDirection: Axis.horizontal,
    //         children: [
    //           Container(
    //             child: Column(
    //               children: [
    //                 CircleAvatar(
    //                   backgroundImage: AssetImage(
    //                       'assets/images/DewiMayangFadillah.jpg'),
    //                   radius: 0.1 * MediaQuery.of(context).size.height,
    //                 ),
    //                 Text("Dewi Mayang Fadillah A.Md.Kom",
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                         fontFamily: 'Sacramento',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .displaySmall!
    //                             .fontSize)),
    //                 Text("Putri Dari",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Text("Bapak Erdy Haryono & Ibu Dede Sulastri",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Text(
    //                     "Jln. Kencana 1, Desa Banjarwangunan, Kec. Mundu, Kab. Cirebon",
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //               ],
    //             ),
    //           ),
    //           Text("&",
    //               style: TextStyle(
    //                   fontFamily: 'Sacramento',
    //                   color: Colors.red,
    //                   fontSize: Theme.of(context)
    //                       .textTheme
    //                       .displayLarge!
    //                       .fontSize! +
    //                       13)),
    //           Container(
    //             child: Column(
    //               children: [
    //                 CircleAvatar(
    //                   backgroundImage:
    //                   AssetImage('assets/images/AlanAgusNawan.jpg'),
    //                   radius: 0.1 * MediaQuery.of(context).size.height,
    //                 ),
    //                 Text("Alan Agus Nawan S.Kom",
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                         fontFamily: 'Sacramento',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .displaySmall!
    //                             .fontSize)),
    //                 Text("Putra Dari",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Text("Bapak Empep Sujana & Ibu Yati Suryati",
    //                     style: TextStyle(
    //                         fontFamily: 'Josefin',
    //                         color: Color(0xff929EAD),
    //                         fontSize: Theme.of(context)
    //                             .textTheme
    //                             .bodyLarge!
    //                             .fontSize)),
    //                 Container(
    //                   margin: EdgeInsets.symmetric(
    //                     horizontal:
    //                     0.05 * MediaQuery.of(context).size.width,
    //                   ),
    //                   child: Text(
    //                       "Jln. Letkol Abdul Gani, Kel. Majalengka Wetan, Kec. Majalengka, Kab. Majalengka",
    //                       textAlign: TextAlign.center,
    //                       style: TextStyle(
    //                           fontFamily: 'Josefin',
    //                           color: Color(0xff929EAD),
    //                           fontSize: Theme.of(context)
    //                               .textTheme
    //                               .bodyLarge!
    //                               .fontSize)),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ));
    // }
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 0.05 * MediaQuery.of(context).size.width,
          vertical: 0.05 * MediaQuery.of(context).size.height,
        ),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/DewiMayangFadillah.jpg'),
                    radius: 0.1 * MediaQuery.of(context).size.height,
                  ),
                  Text("Dewi Mayang Fadillah A.Md.Kom",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Sacramento',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .fontSize)),
                  Text("Putri Dari",
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Color(0xff929EAD),
                          fontWeight: FontWeight.bold,
                          fontSize: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .fontSize)),
                  Text("Bapak Erdy Haryono & Ibu Dede Sulastri",
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .fontSize)),
                  Text(
                      "Jln. Kencana 1, Desa Banjarwangunan, Kec. Mundu, Kab. Cirebon",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .fontSize)),
                ],
              ),
            ),
            Text("&",
                style: TextStyle(
                    fontFamily: 'Sacramento',
                    color: Colors.red,
                    fontSize: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .fontSize! +
                        13)),
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/images/AlanAgusNawan.jpg'),
                    radius: 0.1 * MediaQuery.of(context).size.height,
                  ),
                  Text("Alan Agus Nawan S.Kom",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Sacramento',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .fontSize)),
                  Text("Putra Dari",
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Color(0xff929EAD),
                          fontWeight: FontWeight.bold,
                          fontSize: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .fontSize)),
                  Text("Bapak Empep Sujana & Ibu Yati Suryati",
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .fontSize)),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal:
                      0.05 * MediaQuery.of(context).size.width,
                    ),
                    child: Text(
                        "Jln. Letkol Abdul Gani, Kel. Majalengka Wetan, Kec. Majalengka, Kab. Majalengka",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            color: Color(0xff929EAD),
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .fontSize)),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
