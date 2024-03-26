part of 'isi_view.dart';

class CountdownView extends GetView<IsiController> {
  const CountdownView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 0.05 * MediaQuery.of(context).size.width,
        vertical: 0.05 * MediaQuery.of(context).size.height,
      ),
      child: Column(children: [
        Text("Save The Date",
            style: TextStyle(
                fontFamily: 'Sacramento',
                color: Color(0xff929EAD),
                fontSize: Theme.of(context).textTheme.displayMedium!.fontSize)),
        CountdownTimer(
          targetDate:
              DateTime(2024, 5, 5), // Set the target date here (5 May 2024)
        ),
        Text("Minggu, 5 Mei 2024",
            style: TextStyle(
                fontFamily: 'Josefin',
                color: Color(0xff929EAD),
                fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize)),
        Container(
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
            margin: EdgeInsets.symmetric(
                vertical: 0.025 * MediaQuery.of(context).size.height),
            width: MediaQuery.of(context).size.width <= 1000
                ? 0.6 * MediaQuery.of(context).size.width
                : 0.25 * MediaQuery.of(context).size.width,
            child: InkWell(
              onTap: () {
                js.context.callMethod('open', [
                  'https://www.google.com/calendar/render?action=TEMPLATE&text=Acara%20Pernikahan%20Mayang%20dan%20Alan&ctz=Asia/Jakarta&dates=20240505T083000/20240505T150000%7D&details=Acara%20Pernikahan%20Mayang%20dan%20Alan&location=Gedung%20Kaliandra%20(%20Graha%20Pena%20Radar%20Cirebon%20),%20Jalan%20Perjuangan%20No.09,%20Kesambi,%20Kota%20Cirebon,%20Jawa%20Barat,%20Indonesia.&sprop=&sprop=name:'
                ]);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_month, color: Color(0xff929EAD)),
                  Text("Simpan Acara Ke Kalendar",
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .fontSize)),
                ],
              ),
            ))
      ]),
    );
  }
}

class CountdownTimer extends StatefulWidget {
  final DateTime targetDate;

  const CountdownTimer({Key? key, required this.targetDate}) : super(key: key);

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  Duration _remainingTime = Duration();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Text('${_remainingTime.inDays}',
                  style: TextStyle(
                      fontFamily: 'Sacramento',
                      color: Color(0xff929EAD),
                      fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize)),
              Text('HARI',
                  style: TextStyle(
                      fontFamily: 'Josefin',
                      color: Color(0xff929EAD),
                      fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: 0.01 * MediaQuery.of(context).size.height),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('${_remainingTime.inHours.remainder(24)}',
                      style: TextStyle(
                          fontFamily: 'Sacramento',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .fontSize)),
                  Text('JAM',
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Color(0xff929EAD),
                          fontSize:
                              Theme.of(context).textTheme.titleLarge!.fontSize,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 0.05 * MediaQuery.of(context).size.width),
                child: Column(
                  children: [
                    Text('${_remainingTime.inMinutes.remainder(60)}',
                        style: TextStyle(
                            fontFamily: 'Sacramento',
                            color: Color(0xff929EAD),
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .fontSize)),
                    Text('MENIT',
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            color: Color(0xff929EAD),
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .fontSize,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Column(
                children: [
                  Text('${_remainingTime.inSeconds.remainder(60)}',
                      style: TextStyle(
                          fontFamily: 'Sacramento',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .fontSize)),
                  Text('DETIK',
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Color(0xff929EAD),
                          fontSize:
                              Theme.of(context).textTheme.titleLarge!.fontSize,
                          fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  void _startTimer() {
    DateTime currentDate = DateTime.now();
    Duration difference = widget.targetDate.difference(currentDate);

    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (difference.inSeconds <= 0) {
          _remainingTime = Duration(seconds: 0);
          _timer.cancel();
          // Handle timer completion here
        } else {
          _remainingTime = difference - Duration(seconds: timer.tick);
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
