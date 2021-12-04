import 'package:flutter/material.dart';

class TextProvider with ChangeNotifier {
  final List<String> _text = [
    "Providers are awesome",
    "Flutter is cool",
    "Flutter with providers is super cool",
  ];
  int _index = 0;

  int get index {
    return _index;
  }

  List<String> get text {
    return [..._text];
  }

  void changeText() {
    if (index == text.length - 1) {
      _index = 0;
    } else {
      _index++;
    }
    notifyListeners();
  }
}
