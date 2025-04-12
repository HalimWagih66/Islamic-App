class ZakrModel {
  ZakrModel({
      this.id, 
      this.category, 
      this.count, 
      this.description, 
      this.reference, 
      this.zekr,});

  ZakrModel.fromJson(dynamic json) {
    id = json['id'];
    category = json['category'];
    count = json['count'];
    description = json['description'];
    reference = json['reference'];
    zekr = json['zekr'];
  }
  num? id;
  String? category;
  String? count;
  String? description;
  String? reference;
  String? zekr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category'] = category;
    map['count'] = count;
    map['description'] = description;
    map['reference'] = reference;
    map['zekr'] = zekr;
    return map;
  }

}