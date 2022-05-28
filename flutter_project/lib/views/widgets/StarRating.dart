import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double _starNum;
  // ignore: use_key_in_widget_constructors
  const StarRating(this._starNum);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: getStarList(),
      ),
    );
  }

  List<Widget> getStarList() {
    List<Widget> stars = [];
    double n = _starNum;
    for (int i = 0; i < 5; i++) {
      if (n > 0) {
        stars.add(const Icon(
          Icons.star_rate,
          size: 15,
          color: Colors.orangeAccent,
        ));
        n--;
      } else {
        stars.add(const Icon(
          Icons.star_border,
          size: 15,
          color: Colors.orangeAccent,
        ));
      }
    }
    return stars;
  }
}
