import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale locale = const Locale('en');

  changeLocalTo({required Locale locale}) {
    this.locale = locale;
    notifyListeners();
  }
}
