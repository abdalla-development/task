import 'package:flutter/material.dart';

class UserCardProvider extends ChangeNotifier{
  List<Widget> userCardsList = [];
  List<Widget> get userCards => userCardsList;

  void updateUsersList(List<Widget> list){
    userCardsList = list;
    notifyListeners();
  }
}
