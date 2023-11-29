import 'package:fitness_app/feature/providers/network/api_endpoint.dart';
import 'package:fitness_app/feature/providers/network/api_provider.dart';
import 'package:fitness_app/feature/providers/network/api_request_representable.dart';

enum ExcerciseType {
  fetchExcerciseList,
  fetchExcerciseBodyPartList,
  fetchExcerciseDetails
}

class ExcerciseAPI implements APIRequestRepresentable {
  final ExcerciseType type;
  String? keyword;
  int? offset;
  int? limit;
  ExcerciseAPI._({required this.type, this.keyword, this.offset, this.limit});
  ExcerciseAPI.fetchExcerciseList()
      : this._(type: ExcerciseType.fetchExcerciseList);
  ExcerciseAPI.fetchExcerciseBodyPartList(String keyword, int offset, int limit)
      : this._(
          type: ExcerciseType.fetchExcerciseBodyPartList,
          keyword: keyword,
          offset: offset,
          limit: limit,
        );
  ExcerciseAPI.fetchExcerciseDetails(String keyword)
      : this._(type: ExcerciseType.fetchExcerciseDetails, keyword: keyword);

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
    switch (type) {
      case ExcerciseType.fetchExcerciseList:
        return "bodyPartList";
      case ExcerciseType.fetchExcerciseBodyPartList:
        return "bodyPart/$keyword";
      case ExcerciseType.fetchExcerciseDetails:
        return "exercise/$keyword";
    }
  }

  @override
  Map<String, String> get query {
    switch (type) {
      case ExcerciseType.fetchExcerciseList:
        return {};
      case ExcerciseType.fetchExcerciseBodyPartList:
        return {
          "": "$keyword",
          "offset": "$offset",
          "limit": "$limit",
        };
      case ExcerciseType.fetchExcerciseDetails:
        return {"": "$keyword"};
    }
  }
}
