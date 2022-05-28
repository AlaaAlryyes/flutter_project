import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/views/screens/Payment.dart';
import 'package:flutter_project/views/widgets/AppointmnetListItem.dart';
import 'package:flutter_project/views/widgets/SearchField.dart';
import 'package:flutter_project/controllers/appointments.dart';
import 'package:flutter_project/controllers/auth.dart';

class Appoinments extends StatelessWidget {
  const Appoinments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.account_circle_sharp))
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(150.0),
            child: Column(
              children: [
                Container(
                  child: SearchField(),
                  width: getScreenWidth(context) * .9,
                  height: 50,
                ),
                Container(
                  height: 50,
                ),
                const TabBar(
                  indicatorColor: Colors.lightBlueAccent,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      text: "Upcoming",
                    ),
                    Tab(text: "Past")
                  ],
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              child: ListView(
                children: [
                  AppointmentListItem("Shady", "2022/2/2"),
                  AppointmentListItem("Shady", "2022/2/2"),
                  AppointmentListItem("Shady", "2022/2/2")
                ],
              ),
              height: getScreenHeight(context) * .4,
            ),
            Container(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Payment())));
              },
              child: const Text('Book a new appointment'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple[800]),
                  minimumSize: MaterialStateProperty.all(
                      Size(getScreenWidth(context) * 0.9, 50))),
            )
          ],
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }

  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
