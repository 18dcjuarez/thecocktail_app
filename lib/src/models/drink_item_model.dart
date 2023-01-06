class DrinkItemModel {
  DrinkItemModel({this.strDrink, this.strDrinkThumb, this.idDrink});

  DrinkItemModel.fromJson(Map<String, dynamic> json) {
    strDrink = json['strDrink'].toString();
    strDrinkThumb = json['strDrinkThumb'].toString();
    idDrink = json['idDrink'].toString();
  }
  String? strDrink;
  String? strDrinkThumb;
  String? idDrink;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['strDrink'] = strDrink;
    data['strDrinkThumb'] = strDrinkThumb;
    data['idDrink'] = idDrink;
    return data;
  }
}
