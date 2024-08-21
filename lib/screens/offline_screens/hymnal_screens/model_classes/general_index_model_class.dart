import 'hymn_model_class.dart';

class GeneralIndexModelClass {
  late String alphabet;
  late List<HymnModel> generalIndex;

  GeneralIndexModelClass({required this.generalIndex, required alphabet});

  GeneralIndexModelClass.fromJson(Map<String,dynamic> json){
    generalIndex = List<HymnModel>.from(json["generalIndex"].map((hymn) => HymnModel.fromJson(hymn))); 
    alphabet = json['alphabet'] as String;
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic>  alphabets = <String, dynamic>{}; 
    alphabets["alphabet"] = alphabet;
    alphabets["generalIndex"] = generalIndex.map((hymn) => hymn.toJson()).toList();
    return alphabets;
  }
}