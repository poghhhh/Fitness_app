class ExcerciseBodyPart {
  String? bodyPart;
  String? equipment;
  String? gifUrl;
  String? id;
  String? name;
  String? target;
  List<String>? secondaryMuscles;
  List<String>? instructions;

  ExcerciseBodyPart(
      {this.bodyPart,
      this.equipment,
      this.gifUrl,
      this.id,
      this.name,
      this.target,
      this.secondaryMuscles,
      this.instructions});

  ExcerciseBodyPart.fromJson(Map<String, dynamic> json) {
    bodyPart = json['bodyPart'];
    equipment = json['equipment'];
    gifUrl = json['gifUrl'];
    id = json['id'];
    name = json['name'];
    target = json['target'];
    secondaryMuscles = json['secondaryMuscles'].cast<String>();
    instructions = json['instructions'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bodyPart'] = bodyPart;
    data['equipment'] = equipment;
    data['gifUrl'] = gifUrl;
    data['id'] = id;
    data['name'] = name;
    data['target'] = target;
    data['secondaryMuscles'] = secondaryMuscles;
    data['instructions'] = instructions;
    return data;
  }

  @override
  String toString() {
    return 'ExcerciseBodyPart { '
        'bodyPart: $bodyPart, '
        'equipment: $equipment, '
        'gifUrl: $gifUrl, '
        'id: $id, '
        'name: $name, '
        'target: $target, '
        'secondaryMuscles: $secondaryMuscles, '
        'instructions: $instructions }';
  }
}
