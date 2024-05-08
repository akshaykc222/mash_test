import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';

import '../../../../core/api_provider.dart';
import '../models/request/academic_comp_id_request.dart';
import '../routes/app_remote_routes.dart';

abstract class DashBoardDataSource {
  Future<WordThoughtsModel> fetchWordandThoghtOfTheDay(
      WordThoughtRequest wordThoughtRequest);
}

@LazySingleton(as: DashBoardDataSource)
@injectable
class DashBoardDataSourceImpl extends DashBoardDataSource {
  final ApiProvider apiProvider;

  DashBoardDataSourceImpl({required this.apiProvider});

  @override
  Future<WordThoughtsModel> fetchWordandThoghtOfTheDay(
      WordThoughtRequest wordThoughtRequest) async {
    try {
      final data = await apiProvider.post(
          AppRemoteRoutes.wordAndThougthofTheDay, wordThoughtRequest.toJson());
      return WordThoughtsModel.fromJson(data);
    } catch (e) {
      prettyPrint(e.toString());
      throw Exception(e);
    }
  }
}
