part of 'isi_view.dart';

class MapsView extends GetView {
  const MapsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 0.05 * MediaQuery.of(context).size.width,
        vertical: 0.05 * MediaQuery.of(context).size.height,
      ),
      height: 0.65 * MediaQuery.of(context).size.height,
      child: Column(children: [
        Container(
          height: 0.5 * MediaQuery.of(context).size.height,
          child: FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(-6.734087, 108.5390053),
              initialZoom: 18.0,
              onTap: (position, latlng) {
                js.context.callMethod('open', [
                  'https://www.google.com/maps/place/Radar+Cirebon/@-6.7339161,108.5388043,21z/data=!4m12!1m5!3m4!2zNsKwNDQnMDIuMiJTIDEwOMKwMzInMjAuOCJF!8m2!3d-6.7339556!4d108.5391053!3m5!1s0x2e6f1df137050d0b:0x2f26264ebab06237!8m2!3d-6.7340161!4d108.538953!16s%2Fg%2F11gdk_bq9w?entry=ttu'
                ]);
              },
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              RichAttributionWidget(
                attributions: [
                  TextSourceAttribution(
                    'Gedung Kaliandra (Graha Pena Radar Cirebon)',
                    prependCopyright: false,
                    onTap: () => js.context.callMethod('open', [
                      'https://www.google.com/calendar/render?action=TEMPLATE&text=Acara%20Pernikahan%20Mayang%20dan%20Alan&ctz=Asia/Jakarta&dates=20240505T083000/20240505T150000%7D&details=Acara%20Pernikahan%20Mayang%20dan%20Alan&location=Gedung%20Kaliandra%20(%20Graha%20Pena%20Radar%20Cirebon%20),%20Jalan%20Perjuangan%20No.09,%20Kesambi,%20Kota%20Cirebon,%20Jawa%20Barat,%20Indonesia.&sprop=&sprop=name:'
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
        Text(
            "Gedung Kaliandra ( Graha Pena Radar Cirebon )\nJalan Perjuangan No.09, Kesambi, Kota Cirebon, Jawa Barat, Indonesia",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Josefin',
                color: Color(0xff929EAD),
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize)),
        InkWell(
          onTap: () => js.context.callMethod('open', [
            'https://www.google.com/maps/place/Radar+Cirebon/@-6.7339161,108.5388043,21z/data=!4m12!1m5!3m4!2zNsKwNDQnMDIuMiJTIDEwOMKwMzInMjAuOCJF!8m2!3d-6.7339556!4d108.5391053!3m5!1s0x2e6f1df137050d0b:0x2f26264ebab06237!8m2!3d-6.7340161!4d108.538953!16s%2Fg%2F11gdk_bq9w?entry=ttu'
          ]),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: 0.05 * MediaQuery.of(context).size.width,
                vertical: 0.01 * MediaQuery.of(context).size.width),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xff929EAD), width: 1),
            ),
            child: Text(
              "Lihat Lokasi",
              style: TextStyle(
                  fontFamily: 'Josefin',
                  color: Color(0xff929EAD),
                  fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize),
            ),
          ),
        )
      ]),
    );
  }
}
