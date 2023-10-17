import 'package:flutter/foundation.dart';


//ChangeNotifier work as a setState in provider management with global contexts

class CountProvider with ChangeNotifier{

   int _count=0;

  int get count=>_count;

  void setCount(){
    _count++;

    notifyListeners();
  }

}