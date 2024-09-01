import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/provider/categories_provider.dart';
import 'package:todo_flutter/provider/todos_provider.dart';
import 'package:todo_flutter/tabs/tabs.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TodosProvider()),
        ChangeNotifierProvider(create: (context) => CategoriesProvider()),
      ],
      child: MaterialApp(
        title: 'Todo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const Tabs(),
      ),
    );
  }
}
