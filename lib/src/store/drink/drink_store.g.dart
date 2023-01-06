// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DrinkStore on DrinkPrivate, Store {
  late final _$isLoadingAtom =
      Atom(name: 'DrinkPrivate.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$randomDrinkModelAtom =
      Atom(name: 'DrinkPrivate.randomDrinkModel', context: context);

  @override
  RandomDrinkModel? get randomDrinkModel {
    _$randomDrinkModelAtom.reportRead();
    return super.randomDrinkModel;
  }

  @override
  set randomDrinkModel(RandomDrinkModel? value) {
    _$randomDrinkModelAtom.reportWrite(value, super.randomDrinkModel, () {
      super.randomDrinkModel = value;
    });
  }

  late final _$drinkListAtom =
      Atom(name: 'DrinkPrivate.drinkList', context: context);

  @override
  List<DrinkItemModel>? get drinkList {
    _$drinkListAtom.reportRead();
    return super.drinkList;
  }

  @override
  set drinkList(List<DrinkItemModel>? value) {
    _$drinkListAtom.reportWrite(value, super.drinkList, () {
      super.drinkList = value;
    });
  }

  late final _$onGetRandomDrinkAsyncAction =
      AsyncAction('DrinkPrivate.onGetRandomDrink', context: context);

  @override
  Future<void> onGetRandomDrink() {
    return _$onGetRandomDrinkAsyncAction.run(() => super.onGetRandomDrink());
  }

  late final _$onGetDrinkListAsyncAction =
      AsyncAction('DrinkPrivate.onGetDrinkList', context: context);

  @override
  Future<void> onGetDrinkList({required bool isAlcoholic}) {
    return _$onGetDrinkListAsyncAction
        .run(() => super.onGetDrinkList(isAlcoholic: isAlcoholic));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
randomDrinkModel: ${randomDrinkModel},
drinkList: ${drinkList}
    ''';
  }
}
