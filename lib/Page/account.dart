import 'package:flutter/material.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("My Profile", style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          UserWidget(
            image: user.image,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          Center(child: Text(user.name, style: const TextStyle(fontSize: 24))),
          const SizedBox(height: 24),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 48),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Text(user.description, style: const TextStyle(fontSize: 16, height: 1.4))
              ],
            ) ,
          )
        ],
      )
    );
  }
}