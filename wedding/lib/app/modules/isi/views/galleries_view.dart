part of 'isi_view.dart';

class GalleriesView extends GetView {
  const GalleriesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final rnd = Random();
    late List<int> extents;
    int crossAxisCount = 2;
    extents = List<int>.generate(10, (int index) => rnd.nextInt(5) + 1);
    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 0.01 * MediaQuery.of(context).size.height,
                  ),
                  child: Text("Moment yang berharga",
                      style: TextStyle(
                          fontFamily: 'Sacramento',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .fontSize)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 0.01 * MediaQuery.of(context).size.height,
                  ),
                  child: Text('"Moment yang berharga"',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Color(0xff929EAD),
                          fontSize: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .fontSize)),
                ),
              ],
            ),
          ),
          Container(
            height: 0.8 * MediaQuery.of(context).size.height,
            child: MasonryGridView.count(
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemBuilder: (context, index) {
                final height = extents[index] * 100;
                return ImageTile(
                  index: index,
                  width: 100,
                  height: height,
                );
              },
              itemCount: extents.length,
            ),
          )
        ]
      ),
    );
  }
}

class ImageTile extends StatelessWidget {
  const ImageTile({
    Key? key,
    required this.index,
    required this.width,
    required this.height,
  }) : super(key: key);

  final int index;
  final int width;
  final int height;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://picsum.photos/$width/$height?random=$index',
      width: width.toDouble(),
      height: height.toDouble(),
      fit: BoxFit.cover,
    );
  }
}