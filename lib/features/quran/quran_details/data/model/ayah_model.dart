class AyahModel {
  AyahModel({
      this.number, 
      this.audio, 
      this.audioSecondary, 
      this.text, 
      this.numberInSurah,
      this.juz, 
      this.manzil, 
      this.page, 
      this.pageInSurah, 
      this.ruku, 
      this.hizbQuarter, 
      this.sajda, 
      });

  AyahModel.fromJson(dynamic json) {
    number = json['number'];
    audio = json['audio'];
    audioSecondary = json['audioSecondary'] != null ? json['audioSecondary'].cast<String>() : [];
    text = json['text'];
    numberInSurah = json['numberInSurah'];
    juz = json['juz'];
    manzil = json['manzil'];
    page = json['page'];
    pageInSurah = json['pageInSurah'];
    ruku = json['ruku'];
    hizbQuarter = json['hizbQuarter'];
    sajda = json['sajda'];
  }
  num? number;
  String? audio;
  List<String>? audioSecondary;
  String? text;
  num? numberInSurah;
  num? juz;
  num? manzil;
  num? page;
  num? pageInSurah;
  num? ruku;
  num? hizbQuarter;
  bool? sajda;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = number;
    map['audio'] = audio;
    map['audioSecondary'] = audioSecondary;
    map['text'] = text;
    map['numberInSurah'] = numberInSurah;
    map['juz'] = juz;
    map['manzil'] = manzil;
    map['page'] = page;
    map['pageInSurah'] = pageInSurah;
    map['ruku'] = ruku;
    map['hizbQuarter'] = hizbQuarter;
    map['sajda'] = sajda;
    return map;
  }

}