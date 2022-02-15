import 'package:flutter/material.dart';
import 'package:test_flutter/Components/appBar.dart';
import 'package:test_flutter/data/userData.dart';
import 'package:test_flutter/Components/userWidget.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    const user = Profile.user;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          UserWidget(
            image: user.image,
            onClicked: () async {},
          )
        ],
      )
    );
  }
}