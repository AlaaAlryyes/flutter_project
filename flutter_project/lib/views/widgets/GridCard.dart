import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String title;
  final Icon _icon;
  GridCard(this.title, this._icon, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                title,
              ),
            ),
            Padding(
              child: _icon,
              padding: const EdgeInsets.only(top: 20),
            )
          ],
        ),
        elevation: 5,
      ),
      height: getScreenHeight(context) * 0.4,
      width: getScreenWidth(context) * 0.4,
      margin: const EdgeInsets.all(20),
    );
  }

  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
