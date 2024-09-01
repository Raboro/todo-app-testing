import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/provider/categories_provider.dart';
import 'package:todo_flutter/provider/locale_provider.dart';
import 'package:todo_flutter/provider/todos_provider.dart';
import 'package:todo_flutter/tabs/tabs.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<StatefulWidget> createState() => TodoAppState();
}

class TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TodosProvider()),
        ChangeNotifierProvider(create: (context) => CategoriesProvider()),
        ChangeNotifierProvider(create: (context) => LocaleProvider()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Todo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            locale: context.watch<LocaleProvider>().locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: const Tabs(),
          );
        },
      ),
    );
  }
}
