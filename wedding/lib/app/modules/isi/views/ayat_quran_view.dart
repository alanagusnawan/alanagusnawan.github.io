part of 'isi_view.dart';

class AyatQuranView extends GetView {
  const AyatQuranView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 0.05 * MediaQuery.of(context).size.height,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 0.02 * MediaQuery.of(context).size.height,
            ),
            child: Text(
              'وَمِنْ اٰيٰتِهٖٓ اَنْ خَلَقَ لَكُمْ مِّنْ اَنْفُسِكُمْ اَزْوَاجًا لِّتَسْكُنُوْٓا اِلَيْهَا وَجَعَلَ بَيْنَكُمْ مَّوَدَّةً وَّرَحْمَةًۗ اِنَّ فِيْ ذٰلِكَ لَاٰيٰتٍ لِّقَوْمٍ يَّتَفَكَّرُوْنَ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Josefin',
                  color: Color(0xff929EAD),
                  fontSize:
                  Theme.of(context).textTheme.bodyLarge!.fontSize),
            ),
          ),
          Text(
            '"Dan di antara tanda-tanda kekuasaan-Nya ialah Dia menciptakan untukmu isteri-isteri dari jenismu sendiri, supaya kamu cenderung dan merasa tenteram kepadanya, dan dijadikan-Nya diantaramu rasa kasih dan sayang. Sesungguhnya pada yang demikian itu benar-benar terdapat tanda-tanda bagi kaum yang berfikir." (QS. Ar-Rum: 21)',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Josefin',
                color: Color(0xff929EAD),
                fontStyle: FontStyle.italic,
                fontSize:
                Theme.of(context).textTheme.bodyLarge!.fontSize),
          )
        ],
      ),
    );
  }
}
