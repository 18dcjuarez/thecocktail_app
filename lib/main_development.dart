import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:thecocktaildb_app/src/pages/app/app.dart';
import 'package:thecocktaildb_app/src/store/drink/drink_store.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(
    MultiProvider(
      providers: [
        Provider<DrinkStore>(
          create: (_) => DrinkStore(),
        ),
      ],
      child: const App(),
    ),
  );
}
