part of 'isi_view.dart';

class WishesView extends GetView {
  const WishesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(IsiController());
    DatabaseReference ref = FirebaseDatabase.instance.ref();
    return Obx(() => Container(
      margin: EdgeInsets.symmetric(
        horizontal: 0.05 * MediaQuery.of(context).size.width,
        vertical: 0.05 * MediaQuery.of(context).size.height,
      ),
      child: Column(children: [
        Text("Ucapan & Doa",
            style: TextStyle(
                fontFamily: 'Sacramento',
                color: Color(0xff929EAD),
                fontSize: Theme.of(context).textTheme.displayMedium!.fontSize)),
        Container(
          height: 0.5 * MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(
            horizontal: 0.02 * MediaQuery.of(context).size.width,
            vertical: 0.02 * MediaQuery.of(context).size.height,
          ),
          margin: EdgeInsets.symmetric(
            vertical: 0.02 * MediaQuery.of(context).size.height,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView.builder(
              itemCount: controller.comments.length,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                    vertical: 0.01 * MediaQuery.of(context).size.height,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.02 * MediaQuery.of(context).size.width,
                    vertical: 0.0 * MediaQuery.of(context).size.height,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff929EAD),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 0.15 * MediaQuery.of(context).size.width,
                        child: CircleAvatar(
                          backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                          child: Text(
                            controller.comments[index]['name']
                                .toString()[0],
                            style: TextStyle(
                                fontFamily: 'Josefin',
                                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                                fontWeight: FontWeight.bold,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .fontSize),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              controller.comments[index]['name']
                                  .toString(),
                              style: TextStyle(
                                  fontFamily: 'Josefin',
                                  color: Color(0xff929EAD),
                                  fontWeight: FontWeight.bold,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .fontSize),
                            ),
                          ),
                          Container(
                            child: Text(
                              "di ${controller.comments[index]['address'].toString()}",
                              style: TextStyle(
                                  fontFamily: 'Josefin',
                                  color: Color(0xff929EAD),
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .fontSize),
                            ),
                          ),
                          Container(
                            child: Text(
                              '"${controller.comments[index]['wishes'].toString()}"',
                              style: TextStyle(
                                  fontFamily: 'Josefin',
                                  color: Color(0xff929EAD),
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .fontSize),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
        Container(
          child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 0.01 * MediaQuery.of(context).size.height,
              ),
              child: TextField(
                controller: controller.name.value,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Nama Lengkap"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 0.01 * MediaQuery.of(context).size.height,
              ),
              child: TextField(
                controller: controller.address.value,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Alamat"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 0.01 * MediaQuery.of(context).size.height,
              ),
              child: TextField(
                controller: controller.wishes.value,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Tuliskan Ucapan"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 0.01 * MediaQuery.of(context).size.height,
              ),
              child: CupertinoButton(
                  color: Colors.blue,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(controller.Tombol.value),
                  ),
                  onPressed: () {
                    ref.child('comment').child('${controller.comments.length}').set({
                      "name": controller.name.value.text,
                      "address": controller.address.value.text,
                      "wishes": controller.wishes.value.text
                    }).then((value) {
                      Get.snackbar('Berhasil', 'Ucapan Terkirim');
                    }).catchError((error) {
                      Get.snackbar('Gagal', error);
                    });
                  }),
            )
          ]),
        )
      ]),
    ));
  }
}
