import 'package:fitness_app/feature/providers/network/responses/excercise_body_part_list_response.dart';

abstract class ExcerciseBodyPartListPageRepository {
  Future<List<ExcerciseBodyPart>> fetch(String keyword, int offset, int limit);
}
