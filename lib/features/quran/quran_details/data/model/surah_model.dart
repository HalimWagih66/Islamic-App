import 'ayah_model.dart';

class SurahModel {
  SurahModel({
      this.ayahs,});

  SurahModel.fromJson(dynamic json) {
    if (json['ayahs'] != null) {
      ayahs = [];
      json['ayahs'].forEach((v) {
        ayahs?.add(AyahModel.fromJson(v));
      });
    }
  }
  List<AyahModel>? ayahs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (ayahs != null) {
      map['ayahs'] = ayahs?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}