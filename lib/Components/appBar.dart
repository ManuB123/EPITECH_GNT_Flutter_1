import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    iconTheme: IconThemeData(
      color: Colors.blue.shade800, //change your color here
    ),
    leading: BackButton(),
    elevation: 0,
    backgroundColor: Colors.transparent,
  );
}