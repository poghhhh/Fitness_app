import 'package:fitness_app/feature/providers/network/responses/excercise_list_response.dart';

abstract class ExcerciseListPageRepository {
  Future<Excercise> fetch();
}
