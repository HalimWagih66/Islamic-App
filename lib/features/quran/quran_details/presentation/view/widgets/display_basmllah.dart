import 'package:flutter/material.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class DisplayBasmllah extends StatelessWidget {
  const DisplayBasmllah({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Text("بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِ",style: settingsProvider.themeApp.fontElquran,textAlign: TextAlign.center,);
  }
}
