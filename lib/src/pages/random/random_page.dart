import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:thecocktaildb_app/src/store/drink/drink_store.dart';
import 'package:thecocktaildb_app/src/theme/styles.dart';

class RandomPage extends StatelessWidget {
  const RandomPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final drinkStore = Provider.of<DrinkStore>(context);
    return Observer(
      builder: (context) {
        return drinkStore.isLoading
            ? Center(
                child: SizedBox(
                  height: screenSize.height * 0.35,
                  width: screenSize.width * 0.35,
                  child: CircularProgressIndicator(
                    strokeWidth: screenSize.width * 0.06,
                    color: AppColors.primaryColor,
                  ),
                ),
              )
            : Center(
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.cardShadowColor,
                        blurRadius: 50,
                      ),
                    ],
                  ),
                  child: Card(
                    color: AppColors.primaryColor.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    elevation: 70,
                    child: SizedBox(
                      height: screenSize.height * 0.65,
                      width: screenSize.width * 0.8,
                      child: Padding(
                        padding: EdgeInsets.all(screenSize.height * 0.03),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.greenBackgroundColor,
                              radius: 100,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  drinkStore.randomDrinkModel?.strDrinkThumb ??
                                      'https://www.thecocktaildb.com/images/media/drink/n433t21504348259.jpg',
                                ), //NetworkImage
                                radius: 90,
                              ), //CircleAvatar
                            ),
                            Text(
                              '${drinkStore.randomDrinkModel?.strDrink}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Chip(
                              elevation: 20,
                              padding:
                                  EdgeInsets.all(screenSize.height * 0.008),
                              backgroundColor: AppColors.greenBackgroundColor,
                              shadowColor: AppColors.blackColor,
                              avatar: const Icon(
                                Icons.category,
                                color: AppColors.primaryColor,
                              ), //CircleAvatar
                              label: Text(
                                '${drinkStore.randomDrinkModel?.strCategory}',
                                style: TextStyle(
                                  color:
                                      AppColors.primaryColor.withOpacity(0.9),
                                  fontSize: screenSize.height * 0.03,
                                ),
                              ), //Text
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: screenSize.height * 0.02,
                              ),
                              child: Text(
                                // ignore: lines_longer_than_80_chars
                                '${drinkStore.randomDrinkModel?.strInstructions}',
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color: AppColors.backGroundBlue,
                                      fontSize: screenSize.height * 0.025,
                                    ),
                              ),
                            ),
                            SizedBox(
                              width: screenSize.width * 0.3,
                              child: ElevatedButton(
                                onPressed: () => 'Null',
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    AppColors.greenBackgroundColor,
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.all(screenSize.height * 0.006),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(Icons.touch_app),
                                      Text('GO!')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Tap on center icon to get another random drink!',
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
      },
    );
  }
}
