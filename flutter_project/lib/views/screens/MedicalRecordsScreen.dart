import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/views/widgets/MedicalRecord.dart';

import '../widgets/SearchField.dart';

class MedicalRecordsScreen extends StatelessWidget {
  const MedicalRecordsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xfffefae0),
        appBar: AppBar(
          backgroundColor: Color(0xff56cfe1),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.account_circle_sharp))
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
                      text: "Clinics",
                    ),
                    Tab(text: "Lab tests"),
                    Tab(text: "Medicines")
                  ],
                )
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return MedicalRecord("Heart", "/", DateTime.now().toString());
            },
            itemCount: 3,
            shrinkWrap: true,
          )),
          SingleChildScrollView(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return MedicalRecord(
                        "Lab Test", "/", DateTime.now().toString());
                  },
                  itemCount: 3,
                  shrinkWrap: true)),
          SingleChildScrollView(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return MedicalRecord(
                        "Medicines", "/", DateTime.now().toString());
                  },
                  itemCount: 3,
                  shrinkWrap: true))
        ]),
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
