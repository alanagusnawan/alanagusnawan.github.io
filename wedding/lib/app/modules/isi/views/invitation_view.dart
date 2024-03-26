part of 'isi_view.dart';

class InvitationView extends GetView {
  const InvitationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 0.05 * MediaQuery.of(context).size.height,
      ),
      child: Column(
        children: [
          Text(
            "Merupakan suatu kehormatan dan kebahagiaan bagi kami apabila, Bapak / Ibu / Saudara / i. berkenan hadir untuk memberikan do'a restunya kami ucapkan terimakasih. ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Josefin',
                color: Colors.black,
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 0.01 * MediaQuery.of(context).size.height,
            ),
            child: Column(
              children: [
                Text(
                  'Turut Mengundang :',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Josefin',
                      color: Colors.black,
                      fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Keluarga Besar Bapak Empep Sujana & Ibu Yati Suryati\nKeluarga Besar Bapak Erdy Haryono & Ibu Dede Sulastri\nKeluarga Besar RSUD Cideres\nKeluarga Besar Tafana Hijab',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Josefin',
                      color: Colors.black,
                      fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize),
                ),
              ],
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              Get.bottomSheet(
                  Container(
                    height: 0.4 * MediaQuery.of(context).size.height,
                    child: AiBarcodeScanner(
                      controller: MobileScannerController(
                        detectionSpeed: DetectionSpeed.noDuplicates,
                      ),
                      onScan: (String value) {
                        debugPrint(value);
                      },
                      onDetect: (BarcodeCapture barcodeCapture) {
                        js.context.callMethod('open', [
                          '${barcodeCapture.barcodes[0].rawValue!.split("#")[1]}'
                        ]);
                      },
                    ),
                  )
              );
            },
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff929EAD),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width <= 1000
                      ? 0.025 * MediaQuery.of(context).size.width
                      : 0.001 * MediaQuery.of(context).size.width,
                  vertical: MediaQuery.of(context).size.width <= 1000
                      ? 0.025 * MediaQuery.of(context).size.width
                      : 0.015 * MediaQuery.of(context).size.width,
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.card_giftcard, color: Color(0xff929EAD)),
                    Text("Dapatkan Hadiah",
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            color: Color(0xff929EAD),
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .fontSize)),
                  ],
                )),
          ),

        ],
      ),
    );
  }
}