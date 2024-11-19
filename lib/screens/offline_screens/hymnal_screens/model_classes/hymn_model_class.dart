class HymnModel{
  late String title;
  late String subtitle;
  late List stanza1,stanza2,stanza3,stanza4,stanza5,stanza6,stanza7,stanza8;
  late List chorus1,chorus2,chorus3,chorus4,chorus5,chorus6,chorus7,chorus8;
  late List interlude1,interlude2,interlude3,interlude4;
  late String audioPath;

  HymnModel({required this.title,required this.subtitle,
  required this.chorus1,required this.chorus2,required this.chorus3,required this.chorus4,required this.chorus5,required this.chorus6,required this.chorus7,required this.chorus8,
  required this.stanza1,required this.stanza2,required this.stanza3,required this.stanza4,required this.stanza5,required this.stanza6,required this.stanza7,required this.stanza8,
  required this.interlude1, required this.interlude2,required this.interlude3,required this.interlude4, required this.audioPath});

  HymnModel.fromJson(Map<String, dynamic> json){
    title = json['title'] as String;
    subtitle = json['subtitle'] as String;
    stanza1 = json['stanza1'] as List;
    stanza2 = json['stanza2'] as List;
    stanza3 = json['stanza3'] as List;
    stanza4 = json['stanza4'] as List;
    stanza5 = json['stanza5'] as List;
    stanza6 = json['stanza6'] as List;
    stanza7 = json['stanza7'] as List;
    stanza8 = json['stanza8'] as List;
    chorus1 = json['chorus1'] as List;
    chorus2 = json['chorus2'] as List;
    chorus3 = json['chorus3'] as List;
    chorus4 = json['chorus4'] as List;
    chorus5 = json['chorus5'] as List;
    chorus6 = json['chorus6'] as List;
    chorus7 = json['chorus7'] as List;
    chorus8 = json['chorus8'] as List;
    interlude1 = json['interlude1'] as List;
    interlude2 = json['interlude2'] as List;
    interlude3 = json['interlude3'] as List;
    interlude4 = json['interlude4'] as List;
    audioPath = json['audioPath'];
  }

  Map<String,dynamic> toJson(){
    return {
    'title' : title,
    'subtitle' : subtitle,
    'stanza1' : stanza1,
    'stanza2' : stanza2,
    'stanza3' : stanza3,
    'stanza4' : stanza4,
    'stanza5' : stanza5,
    'stanza6' : stanza6,
    'stanza7' : stanza7,
    'stanza8' : stanza8,
    'chorus1' : chorus1,
    'chorus2' : chorus2,
    'chorus3' : chorus3,
    'chorus4' : chorus4,
    'chorus5' : chorus5,
    'chorus6' : chorus6,
    'chorus7' : chorus7,
    'chorus8' : chorus8,
    'interlude1' : interlude1,
    'interlude2' : interlude2,
    'interlude3' : interlude3,
    'interlude4' : interlude4,
    'audioPath' : audioPath,
    };
  }
} 