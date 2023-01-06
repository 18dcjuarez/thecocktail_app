// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:thecocktaildb_app/src/data/services/generic_service.dart';
import 'package:thecocktaildb_app/src/models/drink_item_model.dart';
import 'package:thecocktaildb_app/src/models/random_drink_model.dart';

class DrinkService {
  final baseUrl = dotenv.env['BASE_URL'];

  Future<RandomDrinkModel?> getRandomDrink() async {
    final path = '$baseUrl/random.php';
    try {
      final resp = await GenericService.instance.get(
        path,
        headers: {},
        queryParams: {},
      );
      final randomDrink = resp.data['drinks'][0];
      return RandomDrinkModel.fromJson(randomDrink as Map<String, dynamic>);
    } catch (exception) {
      return null;
    }
  }

  Future<List<DrinkItemModel>?> getDrinkList({
    required bool isAlcoholic,
  }) async {
    final path = isAlcoholic
        ? '$baseUrl/filter.php?a=Alcoholic'
        : '$baseUrl/filter.php?a=Non_Alcoholic';
    try {
      final resp = await GenericService.instance.get(
        path,
        headers: {},
        queryParams: {},
      );
      final drinkList = <DrinkItemModel>[];
      // ignore: inference_failure_on_untyped_parameter
      resp.data['drinks'].forEach((drink) {
        drinkList.add(DrinkItemModel.fromJson(drink as Map<String, dynamic>));
      });
      return drinkList;
    } catch (exception) {
      return null;
    }
  }
}
