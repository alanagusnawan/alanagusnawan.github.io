part of 'isi_view.dart';

class LovestoryView extends GetView {
  const LovestoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ScrollController Scontroller = ScrollController();
    final controller = Get.put(IsiController());
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 0.05 * MediaQuery.of(context).size.width,
        vertical: 0.05 * MediaQuery.of(context).size.height,
      ),
      child: Column(
        children: [
          Container(
            child: Text('Love Story',
                style: TextStyle(
                    fontFamily: 'Josefin',
                    color: Color(0xff929EAD),
                    fontSize:
                        Theme.of(context).textTheme.displaySmall!.fontSize)),
          ),
          Container(
            height: 0.22 * MediaQuery.of(context).size.height,
            child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                }),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    controller: Scontroller,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.loveStorys.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          controller.isPlaying.value = true;
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal:
                                0.02 * MediaQuery.of(context).size.width,
                          ),
                          width: 0.3 * MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/DewiMayangFadillah.jpg"),
                                radius:
                                    0.05 * MediaQuery.of(context).size.height,
                              ),
                              Text(controller.loveStorys[index]['date'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Josefin',
                                      color: Color(0xff929EAD),
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .fontSize)),
                              Text(controller.loveStorys[index]['title'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Josefin',
                                      color: Color(0xff929EAD),
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .fontSize)),
                            ],
                          ),
                        ),
                      );
                    })),
          )
        ],
      ),
    );
  }
}