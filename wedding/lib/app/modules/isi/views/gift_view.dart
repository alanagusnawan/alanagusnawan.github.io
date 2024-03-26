part of 'isi_view.dart';

class GiftView extends GetView {
  const GiftView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.defaultDialog(
          title: 'Kirim Hadiah',
          content: Column(
            children: [
              GiftTypeButton(
                  value: "direct_transfer",
                  title: "Direct Transfer",
                  description: 'Kamu bisa Transfer ke rekening yang tertera'),
              GiftTypeButton(
                  value: "kirim_kado",
                  title: "Kirim Kado",
                  description: 'Kirim kado ke alamat yang tertera'),
              GetBuilder<IsiController>(
                builder: (buttonController) {
                  return buttonController.giftType == 'kirim_kado'
                      ? Column(
                          children: [
                            SizedBox(
                                height:
                                    0.03 * MediaQuery.of(context).size.height),
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff929EAD),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width <= 1000
                                          ? 0.025 *
                                              MediaQuery.of(context).size.width
                                          : 0.001 *
                                              MediaQuery.of(context).size.width,
                                ),
                                child: Text(
                                  'Jln. Letkol Abdul Gani No.167, Majalengka Wetan',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Josefin',
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .fontSize),
                                )),
                            SizedBox(
                                height:
                                    0.01 * MediaQuery.of(context).size.height),
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff929EAD),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width <= 1000
                                          ? 0.025 *
                                              MediaQuery.of(context).size.width
                                          : 0.001 *
                                              MediaQuery.of(context).size.width,
                                ),
                                child: Text(
                                  'Jln. Kencana 1 Blok D54 No 12 Banjarwangunan Mundu Kab Cirebon Jawa Barat',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Josefin',
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .fontSize),
                                ))
                          ],
                        )
                      : Column(
                          children: [
                            SizedBox(
                                height:
                                    0.03 * MediaQuery.of(context).size.height),
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff929EAD),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width <= 1000
                                          ? 0.025 *
                                              MediaQuery.of(context).size.width
                                          : 0.001 *
                                              MediaQuery.of(context).size.width,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'BCA',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Josefin',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .fontSize,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '3740977368',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Josefin',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .fontSize,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'A/N. Dewi Mayang Fadillah',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Josefin',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .fontSize),
                                    )
                                  ],
                                )),
                            SizedBox(
                                height:
                                    0.01 * MediaQuery.of(context).size.height),
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff929EAD),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width <= 1000
                                          ? 0.025 *
                                              MediaQuery.of(context).size.width
                                          : 0.001 *
                                              MediaQuery.of(context).size.width,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'BCA',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Josefin',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .fontSize,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '4180634784',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Josefin',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .fontSize,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'A/N. Alan Agus Nawan',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Josefin',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .fontSize),
                                    )
                                  ],
                                )),
                            SizedBox(
                                height:
                                    0.01 * MediaQuery.of(context).size.height),
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff929EAD),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width <= 1000
                                          ? 0.025 *
                                              MediaQuery.of(context).size.width
                                          : 0.001 *
                                              MediaQuery.of(context).size.width,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'BJB',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Josefin',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .fontSize,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '0116418428101',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Josefin',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .fontSize,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'A/N. Alan Agus Nawan',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Josefin',
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .fontSize),
                                    )
                                  ],
                                )),
                            // SizedBox(height: 0.01 * MediaQuery.of(context).size.height),
                            // Container(
                            //     decoration: BoxDecoration(
                            //       border: Border.all(
                            //         color: Color(0xff929EAD),
                            //       ),
                            //       borderRadius: BorderRadius.circular(10),
                            //     ),
                            //     padding: EdgeInsets.symmetric(
                            //       horizontal: MediaQuery.of(context).size.width <= 1000 ? 0.025 * MediaQuery.of(context).size.width : 0.001 * MediaQuery.of(context).size.width,
                            //     ),
                            //     child: Column(
                            //       children: [
                            //         Text(
                            //           'BRI',
                            //           textAlign: TextAlign.center,
                            //           style: TextStyle(
                            //               fontFamily: 'Josefin',
                            //               fontSize: Theme.of(context)
                            //                   .textTheme
                            //                   .titleLarge!
                            //                   .fontSize,
                            //               fontWeight: FontWeight.bold),
                            //         ),
                            //         Text(
                            //           '4319*********504',
                            //           textAlign: TextAlign.center,
                            //           style: TextStyle(
                            //               fontFamily: 'Josefin',
                            //               fontSize: Theme.of(context)
                            //                   .textTheme
                            //                   .titleLarge!
                            //                   .fontSize,
                            //               fontWeight: FontWeight.bold),
                            //         ),
                            //         Text(
                            //           'A/N. Alan Agus Nawan',
                            //           textAlign: TextAlign.center,
                            //           style: TextStyle(
                            //               fontFamily: 'Josefin',
                            //               fontSize: Theme.of(context)
                            //                   .textTheme
                            //                   .titleMedium!
                            //                   .fontSize),
                            //         )
                            //       ],
                            //     )),
                            // SizedBox(height: 0.01 * MediaQuery.of(context).size.height),
                            // Container(
                            //     decoration: BoxDecoration(
                            //       border: Border.all(
                            //         color: Color(0xff929EAD),
                            //       ),
                            //       borderRadius: BorderRadius.circular(10),
                            //     ),
                            //     padding: EdgeInsets.symmetric(
                            //       horizontal: MediaQuery.of(context).size.width <= 1000 ? 0.025 * MediaQuery.of(context).size.width : 0.001 * MediaQuery.of(context).size.width,
                            //     ),
                            //     child: Column(
                            //       children: [
                            //         Text(
                            //           'BSI',
                            //           textAlign: TextAlign.center,
                            //           style: TextStyle(
                            //               fontFamily: 'Josefin',
                            //               fontSize: Theme.of(context)
                            //                   .textTheme
                            //                   .titleLarge!
                            //                   .fontSize,
                            //               fontWeight: FontWeight.bold),
                            //         ),
                            //         Text(
                            //           '7191130997',
                            //           textAlign: TextAlign.center,
                            //           style: TextStyle(
                            //               fontFamily: 'Josefin',
                            //               fontSize: Theme.of(context)
                            //                   .textTheme
                            //                   .titleLarge!
                            //                   .fontSize,
                            //               fontWeight: FontWeight.bold),
                            //         ),
                            //         Text(
                            //           'A/N. Alan Agus Nawan',
                            //           textAlign: TextAlign.center,
                            //           style: TextStyle(
                            //               fontFamily: 'Josefin',
                            //               fontSize: Theme.of(context)
                            //                   .textTheme
                            //                   .titleMedium!
                            //                   .fontSize),
                            //         )
                            //       ],
                            //     )),
                          ],
                        );
                },
              ),
            ],
          ),
        );
      },
      child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            vertical: 0.01 * MediaQuery.of(context).size.height,
          ),
          decoration: BoxDecoration(
              color: Color(0xff929EAD),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              )),
          child: Text(
            'Kirim Hadiah',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Josefin',
                color: Colors.white,
                fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize),
          )),
    );
  }
}

class GiftTypeButton extends StatelessWidget {
  final String value;
  final String title;
  final String description;

  const GiftTypeButton(
      {required this.value, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IsiController>(
      builder: (buttonController) {
        return InkWell(
          onTap: () => buttonController.setGiftType(value),
          child: Row(
            children: [
              Radio(
                value: value,
                groupValue: buttonController.giftType,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (String? value) {},
                activeColor: Theme.of(context).primaryColor,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                    fontFamily: 'Josefin',
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5),
              Flexible(
                  child: Text(
                description,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontFamily: 'Josefin',
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize),
              )),
            ],
          ),
        );
      },
    );
  }
}
