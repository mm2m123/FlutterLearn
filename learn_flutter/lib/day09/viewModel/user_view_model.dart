import 'package:flutter/material.dart';
import 'package:learn_flutter/day09/model/user_info.dart';

class UserViewModel with ChangeNotifier {
  late UserInfo _user;

  UserViewModel(this._user);

  UserInfo get user => _user;

  set user(UserInfo value) {
    _user = value;
    notifyListeners();
  }
}
