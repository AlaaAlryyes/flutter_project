import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerListItem extends StatelessWidget {
  final String _text;
  final Icon _icon;
  final Widget _route;
  DrawerListItem(this._icon, this._text, this._route);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => _route));
      },
      child: Container(
        child: Row(
          children: [
            _icon,
            Text(
              _text,
            )
          ],
        ),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}
