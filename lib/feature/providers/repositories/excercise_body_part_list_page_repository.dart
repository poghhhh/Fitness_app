import 'package:fitness_app/feature/domain/repositories/excercise_body_part_list_page_repository.dart';
import 'package:fitness_app/feature/providers/network/apis/excercise_list_page_api.dart';
import 'package:fitness_app/feature/providers/network/responses/excercise_body_part_list_response.dart';

class ExcerciseBodyPartListPageRepositoryIml
    extends ExcerciseBodyPartListPageRepository {
  @override
  Future<List<ExcerciseBodyPart>> fetch(
      String keyword, int offset, int limit) async {
    final response =
        await ExcerciseAPI.fetchExcerciseBodyPartList(keyword, offset, limit)
            .request();
    if (response is List) {
      return response.map((item) => ExcerciseBodyPart.fromJson(item)).toList();
    } else {
      throw Exception("Invalid response format");
    }
  }
}
