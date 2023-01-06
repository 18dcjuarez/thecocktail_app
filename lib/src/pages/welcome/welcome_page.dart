import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thecocktaildb_app/src/pages/drinks/drinks_page.dart';
import 'package:thecocktaildb_app/src/pages/random/random_page.dart';
import 'package:thecocktaildb_app/src/store/drink/drink_store.dart';
import 'package:thecocktaildb_app/src/theme/styles.dart';
import 'package:thecocktaildb_app/src/widgets/widgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late DrinkStore drinkStore;

  @override
  void didChangeDependencies() {
    drinkStore = Provider.of<DrinkStore>(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    Future.microtask(() => drinkStore.onGetRandomDrink());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: 1);
    final bottomBarPages = [
      const DrinksPage(),
      const RandomPage(),
      const DrinksPage(
        isAlcoholic: true,
      ),
    ];

    return Scaffold(
      bottomNavigationBar: AnimatedNotchBottomBar(
        pageController: pageController,
        notchColor: AppColors.primaryColor.withOpacity(0.7),
        bottomBarItems: [
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.no_drinks,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.no_drinks,
              color: AppColors.backGroundBlue,
            ),
            itemLabel: 'NoAlcohol',
          ),
          BottomBarItem(
            inActiveItem: const Icon(
              Icons.shuffle_rounded,
              color: Colors.blueGrey,
            ),
            activeItem: InkWell(
              onTap: () {
                Future.microtask(() => drinkStore.onGetRandomDrink());
              },
              child: const Icon(
                Icons.shuffle_rounded,
                color: AppColors.backGroundBlue,
              ),
            ),
            itemLabel: 'Random',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.local_drink_outlined,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.local_drink_outlined,
              color: AppColors.backGroundBlue,
            ),
            itemLabel: 'Alcohol',
          ),
        ],
        onTap: (index) {
          /// control your animation using page controller
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: PageView(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  bottomBarPages.length,
                  (index) => bottomBarPages[index],
                ),
              ),
            ),
          ],
        ),
      ),
      extendBody: true,
    );
  }
}
