/// number : 1
/// name : "سُورَةُ ٱلْفَاتِحَةِ"
/// englishName : "Al-Faatiha"
/// englishNameTranslation : "The Opening"
/// numberOfAyahs : 7
/// revelationType : "Meccan"

class InformationAboutTheSurahModel {
  InformationAboutTheSurahModel({
      this.number, 
      this.name, 
      this.englishName, 
      this.englishNameTranslation, 
      this.numberOfAyahs, 
      this.revelationType,});

  InformationAboutTheSurahModel.fromJson(dynamic json) {
    number = json['number'];
    name = json['name'];
    englishName = json['englishName'];
    englishNameTranslation = json['englishNameTranslation'];
    numberOfAyahs = json['numberOfAyahs'];
    revelationType = json['revelationType'];
  }
  num? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  num? numberOfAyahs;
  String? revelationType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = number;
    map['name'] = name;
    map['englishName'] = englishName;
    map['englishNameTranslation'] = englishNameTranslation;
    map['numberOfAyahs'] = numberOfAyahs;
    map['revelationType'] = revelationType;
    return map;
  }

  @override
  String toString() {
    return 'InformationAboutTheSurahModel{number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, numberOfAyahs: $numberOfAyahs, revelationType: $revelationType}';
  }
}