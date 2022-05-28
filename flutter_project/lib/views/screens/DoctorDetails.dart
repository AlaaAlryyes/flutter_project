import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/views/widgets/AppointmentCard.dart';
import 'package:flutter_project/views/widgets/DoctorListItem.dart';
import 'package:flutter_project/views/widgets/UnorderedListItem.dart';

import '../widgets/StarRating.dart';

class DoctorDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
            backgroundColor: Colors.blueGrey[50],
            appBar: AppBar(
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.account_circle_sharp))
              ],
              bottom: PreferredSize(
                child: Transform.scale(
                  scale: .8,
                  child: Container(
                    child: Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          //Doctor list item
                          child: Container(
                            child: Column(
                              children: [
                                Transform.scale(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        DoctorProfilePhoto(),
                                        Column(children: const [
                                          Text("Doctor name"),
                                          Text(
                                            "Specialty",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black12),
                                          ),
                                          Text("Location",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black12,
                                              )),
                                          StarRating(3),
                                        ])
                                      ],
                                    ),
                                  ),
                                  scale: 1.5,
                                  alignment: const Alignment(-1, -1),
                                ),

                                const SizedBox(
                                  height: 50,
                                ),
                                //Appoitments List
                                Container(
                                  height: 120,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      AppointmentCard(),
                                      AppointmentCard(),
                                      AppointmentCard()
                                    ],
                                    shrinkWrap: true,
                                  ),
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Book appointment'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue[800]),
                          minimumSize: MaterialStateProperty.all(
                              Size(getScreenWidth(context) * 0.9, 50)),
                        ),
                      ),
                      const TabBar(
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'Doctor'),
                          Tab(text: 'Clinc'),
                          Tab(text: 'Feedback'),
                        ],
                      ),
                    ]),
                  ),
                ),
                preferredSize: Size(getScreenWidth(context), 350),
              ),
            ),
            body: TabBarView(children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    _LanguagesContainer(const ["arabic", "france"]),
                    _DescriptionList("Education", ["First", "Second", "Last"]),
                    _DescriptionList(
                        "Publications", ["First", "Second", "Last"])
                  ],
                ),
              ),
              Text("data"),
              Text("data")
            ])));
  }

  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}

class _LanguagesContainer extends StatelessWidget {
  final List<String> _languages;
  _LanguagesContainer(this._languages);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text("Languages",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          load_flags(),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            endIndent: 15,
            indent: 15,
          )
        ],
      ),
    );
  }

  Widget createContainer(String language) {
    return Container(
        child: Row(
      children: [
        Image.asset(
          "assets/png100px/" + language.substring(0, 2) + ".png",
          scale: 3,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(language),
        const SizedBox(
          width: 15,
        )
      ],
    ));
  }

  Row load_flags() {
    List<Widget> list = [];
    for (String s in _languages) {
      list.add(createContainer(s));
    }
    return Row(
      children: list,
    );
  }
}

class _DescriptionList extends StatelessWidget {
  final String _title;
  final List<String> _listOfPoints;
  _DescriptionList(this._title, this._listOfPoints);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                _title,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Column(
            children: _toListOfWidgets(_listOfPoints),
          ),
          const Divider(
            indent: 15,
            endIndent: 15,
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      margin: EdgeInsets.only(left: 20),
    );
  }

  List<Widget> _toListOfWidgets(List<String> l) {
    List<Widget> widgets = [];
    for (String s in l) {
      widgets.add(UnorderedListItem(s));
    }
    return widgets;
  }
}
