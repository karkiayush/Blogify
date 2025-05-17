import 'package:flutter/cupertino.dart';

class ObsecureTextProvider extends ChangeNotifier {
  bool _isObsecureText = true;

  bool get isObsecure => _isObsecureText;

  void updateObsecureText(bool updateValue) {
    _isObsecureText = updateValue;
    notifyListeners();
  }
}
