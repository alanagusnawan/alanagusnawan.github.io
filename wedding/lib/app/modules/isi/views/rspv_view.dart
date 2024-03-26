part of 'isi_view.dart';

class RspvView extends GetView {
  const RspvView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(IsiController());
    print(controller.rspv.indexWhere((item) => item['name'] == Get.arguments['name']));
    DatabaseReference ref = FirebaseDatabase.instance.ref();
    return Obx(() => Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
              )),
          margin: EdgeInsets.symmetric(
            horizontal: 0.05 * MediaQuery.of(context).size.width,
            vertical: 0.02 * MediaQuery.of(context).size.height,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 0.01 * MediaQuery.of(context).size.height,
          ),
          child: Column(
            children: [
              Text(
                  "${controller.rspv.length} tamu merespon akan datang, kirim konfirmasi."),
              Divider(),
              CupertinoButton(
                  color: Colors.blue,
                  child: Text(controller.Tombol.value),
                  onPressed: () {
                    int data = controller.rspv.indexWhere((item) => item['name'] == Get.arguments['name']);
                    if(data == -1) {
                      ref.child('hadir').child('${controller.rspv.length}').set({
                        "name": Get.arguments['name']
                      }).then((value) {
                        Get.snackbar('Berhasil', 'Kami Tunggu Kehadiran Anda');
                      }).catchError((error) {
                        Get.snackbar('Gagal', error.toString());
                      });
                    } else {
                      Get.snackbar('Maaf', 'Anda Sudah Masuk Kedalam Daftar Hadir Kami, Terima Kasih');
                    }
                    // ref
                    //     .update({"hadir": (controller.hadir.value + 1)})
                    //     .then((value) => Get.snackbar(
                    //         'Berhasil', 'Kami Tunggu Kehadiran Anda'))
                    //     .catchError(
                    //         (error) => Get.snackbar('Gagal', error.toString()));
                  })
            ],
          ),
        ));
  }
}
