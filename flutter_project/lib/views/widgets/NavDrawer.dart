import 'package:flutter/material.dart';
import 'package:flutter_project/views/widgets/DrawerList.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const DrawerList(),
      decoration: const BoxDecoration(color: Colors.white),
      width: getScreenWidth(context) * 0.5,
    );
  }

  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
