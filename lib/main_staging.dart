import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:thecocktaildb_app/src/pages/app/app.dart';

Future<void> main() async {
  await dotenv.load(fileName: 'env');
  runApp(
    MultiProvider(
      providers: const [],
      child: const App(),
    ),
  );
}
