import 'package:flutter/material.dart';

class PhoneField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhoneFieldState();
  }
}

class _PhoneFieldState extends State<PhoneField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'User Name',
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
