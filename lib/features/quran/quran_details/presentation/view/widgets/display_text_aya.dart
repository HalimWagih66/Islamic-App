import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/settings_provider.dart';
import '../../../data/model/ayah_model.dart';
import 'aya_number_widget.dart';

TextSpan displayTextAya(BuildContext context,AyahModel ayaModel){
  var settingsProvider = Provider.of<SettingsProvider>(context,listen: false);
  return TextSpan(
      children: [
        TextSpan(text: ayaModel.text,style: settingsProvider.themeApp.fontElquran),
        ayaNumberWidget(context: context, ayaNumber: ayaModel.numberInSurah!.toInt(),urlSound: ayaModel.audio??ayaModel.audioSecondary?[0]??"")
      ]
  );
}