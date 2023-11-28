import 'package:fitness_app/feature/providers/network/api_endpoint.dart';
import 'package:fitness_app/feature/providers/network/api_provider.dart';
import 'package:fitness_app/feature/providers/network/api_request_representable.dart';

enum ExcerciseType { fetch }

class ExcerciseAPI implements APIRequestRepresentable {
  final ExcerciseType type;
  ExcerciseAPI._({required this.type});
  ExcerciseAPI.fetchBodyPart()
      : this._(
          type: ExcerciseType.fetch,
        );
  @override
  String get endpoint => APIEndpoint.newsapi;

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  @override
  Map<String, String> get headers => {
        "X-RapidAPI-Key": "a7e2f00e24msh6eac79a50ff51c8p1352abjsn025730d24bd9",
        "X-RapidAPI-Host": "exercisedb.p.rapidapi.com"
      };

  @override
  get body => null;

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;

  @override
  String get path {
    return "bodyPartList";
  }

  @override
  Map<String, String> get query {
    return {};
  }
}
