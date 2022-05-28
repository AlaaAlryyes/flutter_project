import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/views/widgets/PaymentCard.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar:
          AppBar(elevation: 0, backgroundColor: Colors.transparent, actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_outline_rounded),
          color: Colors.black,
        )
      ]),
      ////////////////////////////////////////////////
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //Information header
          const Text.rich(TextSpan(children: [
            TextSpan(
                text: "Dr. Alaa ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: "confirmation")
          ])),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.center,
            child: const Text(
              "Thu, 09 Apr 8:00",
              style: TextStyle(fontSize: 20),
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            width: getScreenWidth(context) * 0.5,
            height: 50,
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("City name",
                          style:
                              TextStyle(fontSize: 10, color: Colors.black26)),
                      Text(
                        "Street name",
                        style: TextStyle(fontSize: 10, color: Colors.black26),
                      ),
                    ]),
              )
            ],
          ),
          const Divider(
            indent: 15,
            endIndent: 15,
          ),

          //Text fields
          Transform.scale(
            scale: .9,
            child: Column(
              children: [
                Container(
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 10,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none),
                        hintText: "Message",
                      ),
                    ),
                  ),
                  padding:
                      const EdgeInsets.only(right: 20, top: 20, bottom: 20),
                ),
                Container(
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 10,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none),
                        hintText: "Reson for visit",
                      ),
                    ),
                  ),
                  padding:
                      const EdgeInsets.only(right: 20, top: 20, bottom: 20),
                ),
              ],
            ),
          ),
          const Text(
            "Check+Scaling",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          //Credit card scroll list

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: PaymentCard(),
                ),
              ],
            ),
          ),
          const Padding(
              child: Text("Manage Card >"),
              padding: EdgeInsets.only(top: 15, bottom: 30)),

          ElevatedButton(
            onPressed: () {},
            child: const Text('Pay now'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.purple[800]),
              minimumSize: MaterialStateProperty.all(
                  Size(getScreenWidth(context) * 0.9, 50)),
            ),
          )
        ]),
      )),
    );
  }
}
