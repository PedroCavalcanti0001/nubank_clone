import 'package:flutter/cupertino.dart';

class AccountOption {
  IconData iconData;
  List<String> title;
  Function action;

  AccountOption(this.iconData, this.title, this.action);
}
