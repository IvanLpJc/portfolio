import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {

  final PageController controller = PageController();
  
  int _currentPage = 0;

  int get currentPage => _currentPage;

  set currentPage(int value) {
    _currentPage = value;
    controller.animateToPage(value, duration: const Duration(milliseconds: 500), curve: Curves.easeInBack);
    notifyListeners();
  }
}