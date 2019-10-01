import 'package:flutter/material.dart';

class BusinessLogic extends ChangeNotifier {
  bool isBusy = false;

  Future<Null> setToBusy() async {
    isBusy = true;
    notifyListeners(); 

    //This represents your background processing.. 
    Future.delayed(Duration(seconds: 3), () {
      isBusy = false;
      notifyListeners();
    });

    //Try removing notifyListeners() to see how the app will behave
  }
}
