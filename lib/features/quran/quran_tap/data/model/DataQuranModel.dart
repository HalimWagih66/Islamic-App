/// id : 1
/// page : 1
/// sura_no : 1
/// sura_name_en : "Al-Fātiḥah"
/// sura_name_ar : "الفَاتِحة"
/// line_start : 2
/// line_end : 2
/// aya_no : 1
/// aya_text_emlaey : "بسم الله الرحمن الرحيم"

class DataQuranModel {
  DataQuranModel({
      this.id, 
      this.page,
      this.suraNo, 
      this.suraNameEn, 
      this.suraNameAr, 
      this.lineStart, 
      this.lineEnd, 
      this.ayaNo,
      this.ayaTextEmlaey,});

  DataQuranModel.fromJson(dynamic json) {
    id = json['id'];
    page = json['page'];
    suraNo = json['sura_no'];
    suraNameEn = json['sura_name_en'];
    suraNameAr = json['sura_name_ar'];
    lineStart = json['line_start'];
    lineEnd = json['line_end'];
    ayaNo = json['aya_no'];
    ayaTextEmlaey = json['aya_text_emlaey'];
  }
  num? id;
  num? page;
  num? suraNo;
  String? suraNameEn;
  String? suraNameAr;
  num? lineStart;
  num? lineEnd;
  num? ayaNo;
  String? ayaTextEmlaey;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['page'] = page;
    map['sura_no'] = suraNo;
    map['sura_name_en'] = suraNameEn;
    map['sura_name_ar'] = suraNameAr;
    map['line_start'] = lineStart;
    map['line_end'] = lineEnd;
    map['aya_no'] = ayaNo;
    map['aya_text_emlaey'] = ayaTextEmlaey;
    return map;
  }

}