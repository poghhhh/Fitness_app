import 'package:fitness_app/feature/providers/network/responses/excercise_body_part_list_response.dart';
import 'package:fitness_app/feature/providers/repositories/excercise_body_part_list_page_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExcerciseBodyPartListPageController extends GetxController {
  ExcerciseBodyPartListPageRepositoryIml
      excerciseBodyPartListPageRepositoryIml = Get.find();
  int limit = 20;
  int page = 1;
  RxBool hasMoreValue = true.obs;
  RxList<ExcerciseBodyPart> dataList = RxList([]);
  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    fetch();
  }

  Future<void> fetch() async {
    try {
      List<ExcerciseBodyPart> response =
          await excerciseBodyPartListPageRepositoryIml.fetch(
              Get.arguments["query"], page, limit);
      if (dataList.length < limit) {
        hasMoreValue.value = false;
      }
      dataList.addAll(response);
      page++;
    } catch (e) {
      return;
    }
  }

  Future refreshData() async {
    page = 1;
    hasMoreValue.value = true;
    dataList.value = [];
    await fetch();
  }

  void onScroll() {
    double maxScroll = scrollController.position.maxScrollExtent;
    double currentScroll = scrollController.position.pixels;
    if (maxScroll == currentScroll && hasMoreValue.value) {
      fetch();
    }
  }

  Future<void> onRefresh() async {
    refreshData();
  }
}
