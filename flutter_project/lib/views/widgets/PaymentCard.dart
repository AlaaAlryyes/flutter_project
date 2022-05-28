import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';

class PaymentCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PaymentCardState();
  }
}

class _PaymentCardState extends State<PaymentCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = !isChecked;
                    value = isChecked;
                  });
                },
                tristate: true,
                shape: const CircleBorder(),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  "Visa",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Alaa", style: TextStyle(color: Colors.white)),
                Text(
                  "17/11",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.blue.shade900),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.purple, Colors.blue]),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      height: getScreenHeight(context) * .2,
      width: getScreenWidth(context) * .4,
    );
  }
}
