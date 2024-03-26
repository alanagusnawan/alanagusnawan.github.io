part of 'isi_view.dart';

class RundownView extends GetView {
  const RundownView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 0.01 * MediaQuery.of(context).size.height,
              horizontal: 0.05 * MediaQuery.of(context).size.width,
            ),
            margin: EdgeInsets.symmetric(
              vertical: 0.05 * MediaQuery.of(context).size.height,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 0.01 * MediaQuery.of(context).size.height,
                  ),
                  child: Text("Akad Nikah",
                      style: TextStyle(
                          fontFamily: 'Sacramento',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .fontSize)),
                ),
                Text("Minggu, 05 Mei 2024",
                    style: TextStyle(
                        fontFamily: 'Josefin',
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.access_time,
                      size: Theme.of(context).textTheme.bodyLarge!.fontSize!,
                    ),
                    Text(" Pukul 09.00 WIB - 10.30 WIB",
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .fontSize)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: Theme.of(context).textTheme.bodyMedium!.fontSize!,
                    ),
                    Text(" Gedung Kaliandra (Graha Pena Radar Cirebon)",
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .fontSize)),
                  ],
                ),
                Text(
                    "Jln Perjuangan No 09, Kec.Kesambi, Kota Cirebon, Jawa Barat",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Josefin',
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize)),
                InkWell(
                  onTap: () => js.context.callMethod('open', [
                    'https://www.google.com/maps/place/Radar+Cirebon/@-6.7339161,108.5388043,21z/data=!4m12!1m5!3m4!2zNsKwNDQnMDIuMiJTIDEwOMKwMzInMjAuOCJF!8m2!3d-6.7339556!4d108.5391053!3m5!1s0x2e6f1df137050d0b:0x2f26264ebab06237!8m2!3d-6.7340161!4d108.538953!16s%2Fg%2F11gdk_bq9w?entry=ttu'
                  ]),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.05 * MediaQuery.of(context).size.width,
                        vertical: 0.01 * MediaQuery.of(context).size.width),
                    margin: EdgeInsets.symmetric(
                      vertical: 0.01 * MediaQuery.of(context).size.height,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff929EAD)),
                    child: Text(
                      "Lihat Lokasi",
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Colors.white,
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 0.01 * MediaQuery.of(context).size.height,
              horizontal: 0.05 * MediaQuery.of(context).size.width,
            ),
            margin: EdgeInsets.symmetric(
              vertical: 0.05 * MediaQuery.of(context).size.height,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 0.01 * MediaQuery.of(context).size.height,
                  ),
                  child: Text("Resepsi",
                      style: TextStyle(
                          fontFamily: 'Sacramento',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .fontSize)),
                ),
                Text("Minggu, 05 Mei 2024",
                    style: TextStyle(
                        fontFamily: 'Josefin',
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.access_time,
                      size: Theme.of(context).textTheme.bodyLarge!.fontSize!,
                    ),
                    Text(" Pukul 11.00 WIB - 15.00 WIB",
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .fontSize)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: Theme.of(context).textTheme.bodyMedium!.fontSize!,
                    ),
                    Text(" Gedung Kaliandra (Graha Pena Radar Cirebon)",
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .fontSize)),
                  ],
                ),
                Text(
                    "Jln Perjuangan No 09, Kec.Kesambi, Kota Cirebon, Jawa Barat",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Josefin',
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize)),
                InkWell(
                  onTap: () => js.context.callMethod('open', [
                    'https://www.google.com/maps/place/Radar+Cirebon/@-6.7339161,108.5388043,21z/data=!4m12!1m5!3m4!2zNsKwNDQnMDIuMiJTIDEwOMKwMzInMjAuOCJF!8m2!3d-6.7339556!4d108.5391053!3m5!1s0x2e6f1df137050d0b:0x2f26264ebab06237!8m2!3d-6.7340161!4d108.538953!16s%2Fg%2F11gdk_bq9w?entry=ttu'
                  ]),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.05 * MediaQuery.of(context).size.width,
                        vertical: 0.01 * MediaQuery.of(context).size.width),
                    margin: EdgeInsets.symmetric(
                      vertical: 0.01 * MediaQuery.of(context).size.height,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff929EAD)),
                    child: Text(
                      "Lihat Lokasi",
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Colors.white,
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
