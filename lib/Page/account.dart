import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Account', style: TextStyle(fontSize: 60))),
    );
  }
}