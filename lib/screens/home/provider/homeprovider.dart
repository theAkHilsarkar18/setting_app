
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homeprovider extends ChangeNotifier
{
  bool onOff = false;

  void onClick(bool value)
  {
    onOff = value;
    notifyListeners();
  }

}
