import 'package:flutter/material.dart';
import 'package:flutter_project/views/widgets/ProfilePhoto.dart';

class DrawerProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ProfilePhoto(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Alaa",
                style: TextStyle(
                  color: Colors.blue[900],
                ),
              ),
              Text(
                "Gaza",
              )
            ],
          )
        ],
      ),
      height: 150,
      decoration: BoxDecoration(color: Colors.black12),
    );
  }
}
