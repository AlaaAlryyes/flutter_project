import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Icon(Icons.person),
      constraints: BoxConstraints(minHeight: 50, minWidth: 50),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
      margin: const EdgeInsets.only(left: 10, right: 10),
    );
  }
}
