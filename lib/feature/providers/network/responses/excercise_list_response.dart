class Excercise {
  List<String>? body;

  Excercise({this.body});

  Excercise.fromJson(List<dynamic> json) {
    body = json.cast<String>();
  }

  List<dynamic> toJson() {
    return body ?? [];
  }
}
