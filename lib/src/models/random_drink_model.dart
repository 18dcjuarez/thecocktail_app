class RandomDrinkModel {
  RandomDrinkModel({
    this.idDrink,
    this.strDrink,
    this.strDrinkAlternate,
    this.strTags,
    this.strVideo,
    this.strCategory,
    this.strIBA,
    this.strAlcoholic,
    this.strGlass,
    this.strInstructions,
    this.strInstructionsES,
    this.strInstructionsDE,
    this.strInstructionsFR,
    this.strInstructionsIT,
    this.strInstructionsZHHANS,
    this.strInstructionsZHHANT,
    this.strDrinkThumb,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strImageSource,
    this.strImageAttribution,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  RandomDrinkModel.fromJson(Map<String, dynamic> json) {
    idDrink = json['idDrink'].toString();
    strDrink = json['strDrink'].toString();
    strDrinkAlternate = json['strDrinkAlternate'];
    strTags = json['strTags'].toString();
    strVideo = json['strVideo'].toString();
    strCategory = json['strCategory'].toString();
    strIBA = json['strIBA'].toString();
    strAlcoholic = json['strAlcoholic'].toString();
    strGlass = json['strGlass'].toString();
    strInstructions = json['strInstructions'].toString();
    strInstructionsES = json['strInstructionsES'].toString();
    strInstructionsDE = json['strInstructionsDE'].toString();
    strInstructionsFR = json['strInstructionsFR'].toString();
    strInstructionsIT = json['strInstructionsIT'].toString();
    strInstructionsZHHANS = json['strInstructionsZH-HANS'].toString();
    strInstructionsZHHANT = json['strInstructionsZH-HANT'].toString();
    strDrinkThumb = json['strDrinkThumb'].toString();
    strIngredient1 = json['strIngredient1'].toString();
    strIngredient2 = json['strIngredient2'].toString();
    strIngredient3 = json['strIngredient3'].toString();
    strIngredient4 = json['strIngredient4'].toString();
    strIngredient5 = json['strIngredient5'].toString();
    strIngredient6 = json['strIngredient6'].toString();
    strIngredient7 = json['strIngredient7'].toString();
    strIngredient8 = json['strIngredient8'].toString();
    strIngredient9 = json['strIngredient9'].toString();
    strIngredient10 = json['strIngredient10'].toString();
    strIngredient11 = json['strIngredient11'].toString();
    strIngredient12 = json['strIngredient12'].toString();
    strIngredient13 = json['strIngredient13'].toString();
    strIngredient14 = json['strIngredient14'].toString();
    strIngredient15 = json['strIngredient15'].toString();
    strMeasure1 = json['strMeasure1'].toString();
    strMeasure2 = json['strMeasure2'].toString();
    strMeasure3 = json['strMeasure3'].toString();
    strMeasure4 = json['strMeasure4'].toString();
    strMeasure5 = json['strMeasure5'].toString();
    strMeasure6 = json['strMeasure6'].toString();
    strMeasure7 = json['strMeasure7'].toString();
    strMeasure8 = json['strMeasure8'].toString();
    strMeasure9 = json['strMeasure9'].toString();
    strMeasure10 = json['strMeasure10'].toString();
    strMeasure11 = json['strMeasure11'].toString();
    strMeasure12 = json['strMeasure12'].toString();
    strMeasure13 = json['strMeasure13'].toString();
    strMeasure14 = json['strMeasure14'].toString();
    strMeasure15 = json['strMeasure15'].toString();
    strImageSource = json['strImageSource'].toString();
    strImageAttribution = json['strImageAttribution'].toString();
    strCreativeCommonsConfirmed =
        json['strCreativeCommonsConfirmed'].toString();
    dateModified = json['dateModified'].toString();
  }
  String? idDrink;
  String? strDrink;
  dynamic strDrinkAlternate;
  String? strTags;
  String? strVideo;
  String? strCategory;
  String? strIBA;
  String? strAlcoholic;
  String? strGlass;
  String? strInstructions;
  String? strInstructionsES;
  String? strInstructionsDE;
  String? strInstructionsFR;
  String? strInstructionsIT;
  String? strInstructionsZHHANS;
  String? strInstructionsZHHANT;
  String? strDrinkThumb;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;
  String? strIngredient7;
  String? strIngredient8;
  String? strIngredient9;
  String? strIngredient10;
  String? strIngredient11;
  String? strIngredient12;
  String? strIngredient13;
  String? strIngredient14;
  String? strIngredient15;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;
  String? strMeasure6;
  String? strMeasure7;
  String? strMeasure8;
  String? strMeasure9;
  String? strMeasure10;
  String? strMeasure11;
  String? strMeasure12;
  String? strMeasure13;
  String? strMeasure14;
  String? strMeasure15;
  String? strImageSource;
  String? strImageAttribution;
  String? strCreativeCommonsConfirmed;
  String? dateModified;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['idDrink'] = idDrink;
    data['strDrink'] = strDrink;
    data['strDrinkAlternate'] = strDrinkAlternate;
    data['strTags'] = strTags;
    data['strVideo'] = strVideo;
    data['strCategory'] = strCategory;
    data['strIBA'] = strIBA;
    data['strAlcoholic'] = strAlcoholic;
    data['strGlass'] = strGlass;
    data['strInstructions'] = strInstructions;
    data['strInstructionsES'] = strInstructionsES;
    data['strInstructionsDE'] = strInstructionsDE;
    data['strInstructionsFR'] = strInstructionsFR;
    data['strInstructionsIT'] = strInstructionsIT;
    data['strInstructionsZH-HANS'] = strInstructionsZHHANS;
    data['strInstructionsZH-HANT'] = strInstructionsZHHANT;
    data['strDrinkThumb'] = strDrinkThumb;
    data['strIngredient1'] = strIngredient1;
    data['strIngredient2'] = strIngredient2;
    data['strIngredient3'] = strIngredient3;
    data['strIngredient4'] = strIngredient4;
    data['strIngredient5'] = strIngredient5;
    data['strIngredient6'] = strIngredient6;
    data['strIngredient7'] = strIngredient7;
    data['strIngredient8'] = strIngredient8;
    data['strIngredient9'] = strIngredient9;
    data['strIngredient10'] = strIngredient10;
    data['strIngredient11'] = strIngredient11;
    data['strIngredient12'] = strIngredient12;
    data['strIngredient13'] = strIngredient13;
    data['strIngredient14'] = strIngredient14;
    data['strIngredient15'] = strIngredient15;
    data['strMeasure1'] = strMeasure1;
    data['strMeasure2'] = strMeasure2;
    data['strMeasure3'] = strMeasure3;
    data['strMeasure4'] = strMeasure4;
    data['strMeasure5'] = strMeasure5;
    data['strMeasure6'] = strMeasure6;
    data['strMeasure7'] = strMeasure7;
    data['strMeasure8'] = strMeasure8;
    data['strMeasure9'] = strMeasure9;
    data['strMeasure10'] = strMeasure10;
    data['strMeasure11'] = strMeasure11;
    data['strMeasure12'] = strMeasure12;
    data['strMeasure13'] = strMeasure13;
    data['strMeasure14'] = strMeasure14;
    data['strMeasure15'] = strMeasure15;
    data['strImageSource'] = strImageSource;
    data['strImageAttribution'] = strImageAttribution;
    data['strCreativeCommonsConfirmed'] = strCreativeCommonsConfirmed;
    data['dateModified'] = dateModified;
    return data;
  }
}
