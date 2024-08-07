import 'azkar_model.dart';

class AzkarDetailsModel {
  AzkarDetailsModel({
      this.data,});

  AzkarDetailsModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(ZakrModel.fromJson(v));
      });
    }
  }
  List<ZakrModel>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}