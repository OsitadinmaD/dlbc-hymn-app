import 'hymn_model_class.dart';

class TopicalIndexModel {
  late String topicalIndex;
  late List<HymnModel> generalIndex;

  TopicalIndexModel({required this.topicalIndex, required this.generalIndex});

  TopicalIndexModel.fromJson(Map<String, dynamic> json){
    topicalIndex = json['topicalIndex'] as String;
    generalIndex = List<HymnModel>.from(json["generalIndex"].map((hymn) => HymnModel.fromJson(hymn)));
  }

  Map<String, dynamic> toJson(){
    final Map<String,dynamic> content = <String,dynamic>{};
    content['topicalIndex'] = topicalIndex;
    content['generalIndex'] = generalIndex.map((hymn) => hymn.toJson()).toList();
    return content;
  }
}