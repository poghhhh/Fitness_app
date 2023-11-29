import 'package:fitness_app/feature/providers/network/responses/excercise_body_part_list_response.dart';

abstract class ExcerciseDetailsPageRepository {
  Future<ExcerciseBodyPart> fetch(String keyword);
}
