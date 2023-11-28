import 'package:fitness_app/feature/domain/repositories/excercise_list_page_repositoy.dart';
import 'package:fitness_app/feature/providers/network/apis/excercise_list_page_api.dart';
import 'package:fitness_app/feature/providers/network/responses/excercise_list_response.dart';

class ExcerciseListPageRepositoryIml extends ExcerciseListPageRepository {
  @override
  Future<Excercise> fetch() async {
    final response = await ExcerciseAPI.fetchBodyPart().request();
    return Excercise.fromJson(response);
  }
}
