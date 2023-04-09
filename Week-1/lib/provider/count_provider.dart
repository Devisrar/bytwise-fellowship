import 'package:flutter/foundation.dart';
class CountProvider with ChangeNotifier{

  int _x=0;
  int get x=>_x;
  void setcount(){
    _x++;
    notifyListeners();
  }
}

