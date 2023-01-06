import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:thecocktaildb_app/src/store/drink/drink_store.dart';
import 'package:thecocktaildb_app/src/theme/styles.dart';

class DrinksPage extends StatefulWidget {
  const DrinksPage({
    super.key,
    this.isAlcoholic = false,
  });
  final bool isAlcoholic;

  @override
  State<DrinksPage> createState() => _DrinksPageState();
}

class _DrinksPageState extends State<DrinksPage> {
  late DrinkStore drinkStore;

  @override
  void didChangeDependencies() {
    drinkStore = Provider.of<DrinkStore>(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    Future.microtask(
      () => drinkStore.onGetDrinkList(
        isAlcoholic: widget.isAlcoholic,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

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
            : ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: drinkStore.drinkList?.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 8,
                    margin: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.02,
                      vertical: screenSize.height * 0.006,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor.withOpacity(1),
                      ),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(4),
                                ),
                                child: Image.network(
                                  fit: BoxFit.fill,
                                  // opacity: const AlwaysStoppedAnimation(.4),
                                  drinkStore.drinkList?[index].strDrinkThumb ??
                                      'https://www.thecocktaildb.com/images/media/drink/n433t21504348259.jpg',
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 100,
                                color: AppColors.blackColor.withOpacity(0.5),
                              )
                            ],
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.04,
                              vertical: screenSize.height * 0.02,
                            ),
                            leading: Container(
                              padding: EdgeInsets.only(
                                right: screenSize.width * 0.05,
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    width: screenSize.width * 0.005,
                                    color: AppColors.backGroundBlue,
                                  ),
                                ),
                              ),
                              child: CircleAvatar(
                                backgroundColor: AppColors.greenBackgroundColor,
                                radius: 20,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    drinkStore
                                            .drinkList?[index].strDrinkThumb ??
                                        'https://www.thecocktaildb.com/images/media/drink/n433t21504348259.jpg',
                                  ),
                                  radius: 18,
                                ),
                              ),
                            ),
                            title: Row(
                              children: [
                                Text(
                                  '${drinkStore.drinkList?[index].strDrink}',
                                  style: const TextStyle(
                                    color: AppColors.whiteColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                const Icon(
                                  Icons.thumb_up_sharp,
                                  color: AppColors.primaryColor,
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.015,
                                ),
                                Text(
                                  '${drinkStore.drinkList?[index].idDrink}',
                                  style: const TextStyle(
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
      },
    );
  }
}
