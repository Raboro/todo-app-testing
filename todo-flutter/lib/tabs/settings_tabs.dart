import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/provider/locale_provider.dart';
import 'package:todo_flutter/widgets/heading.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<StatefulWidget> createState() => SettingsTabState();
}

class SettingsTabState extends State<SettingsTab> {
  void _changeLocale(String? locale) {
    if (locale == null) {
      return;
    }
    context.read<LocaleProvider>().changeLocalTo(locale: Locale(locale));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Heading(text: 'Settings'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Language'),
              DropdownMenu<String>(
                initialSelection:
                    context.watch<LocaleProvider>().locale.toString(),
                onSelected: (String? selected) => _changeLocale(selected),
                dropdownMenuEntries: AppLocalizations.supportedLocales
                    .map(
                      (locale) => DropdownMenuEntry<String>(
                        value: locale.toString(),
                        label: locale.toString(),
                      ),
                    )
                    .toList()
              )
            ],
          ),
        ],
      ),
    );
  }
}
