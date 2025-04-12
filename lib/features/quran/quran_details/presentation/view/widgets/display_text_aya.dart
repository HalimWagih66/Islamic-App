import 'package:flutter/cupertino.dart';
import '../../../../../../my_application.dart';
import '../../../data/model/ayah_model.dart';
import 'aya_number_widget.dart';

TextSpan displayTextAya(BuildContext context,AyahModel ayaModel){
  return TextSpan(
      children: [
        TextSpan(text: ayaModel.text,style: themeApp.fontElquran),
        ayaNumberWidget(context: context, ayaNumber: ayaModel.numberInSurah!.toInt(),urlSound: ayaModel.audio??ayaModel.audioSecondary?[0]??"")
      ]
  );
}