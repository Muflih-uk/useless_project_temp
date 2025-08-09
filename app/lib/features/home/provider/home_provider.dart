import 'package:flutter/foundation.dart';

class HomeProvider with ChangeNotifier {
  String _message = "Welcome!";
  String get message => _message;

  void changeMessage(String newMessage) {
    _message = newMessage;
    notifyListeners();
  }
}
