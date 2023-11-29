import 'package:fitness_app/feature/domain/repositories/excercise_details_page_repository.dart';
import 'package:fitness_app/feature/providers/network/apis/excercise_list_page_api.dart';
import 'package:fitness_app/feature/providers/network/responses/excercise_body_part_list_response.dart';

class ExcerciseDetailsPageRepositoryIml extends ExcerciseDetailsPageRepository {
  @override
  Future<ExcerciseBodyPart> fetch(String keyword) async {
    final response =
        await ExcerciseAPI.fetchExcerciseDetails(keyword).request();
    return ExcerciseBodyPart.fromJson(response);
  }
}
