import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class AppointmentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Thu, 09 Apr"),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('See all'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue[900]),
                      minimumSize: MaterialStateProperty.all(
                          Size(getScreenWidth(context) * 0.2, 40))),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Material(
                    elevation: 5,
                    child: Container(
                      child: Text('8:00am'),
                      padding: EdgeInsets.all(2),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
