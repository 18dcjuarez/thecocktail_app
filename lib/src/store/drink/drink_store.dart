import 'package:mobx/mobx.dart';
import 'package:thecocktaildb_app/src/data/services/drink_service.dart';
import 'package:thecocktaildb_app/src/models/drink_item_model.dart';
import 'package:thecocktaildb_app/src/models/random_drink_model.dart';

part 'drink_store.g.dart';

class DrinkStore = DrinkPrivate with _$DrinkStore;

abstract class DrinkPrivate with Store {
  @observable
  bool isLoading = false;

  @observable
  RandomDrinkModel? randomDrinkModel;

  @observable
  List<DrinkItemModel>? drinkList;

  @action
  Future<void> onGetRandomDrink() async {
    isLoading = true;
    randomDrinkModel = await DrinkService().getRandomDrink();
    isLoading = false;
  }

  @action
  Future<void> onGetDrinkList({required bool isAlcoholic}) async {
    isLoading = true;
    drinkList?.clear();
    drinkList = await DrinkService().getDrinkList(isAlcoholic: isAlcoholic);
    isLoading = false;
  }
}
