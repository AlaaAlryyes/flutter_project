import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/views/screens/Appointments.dart';
import 'package:flutter_project/views/widgets/GridCard.dart';
import 'package:flutter_project/data/searh_terms.dart';
import 'package:flutter_project/views/widgets/NavDrawer.dart';
import 'package:flutter_project/views/widgets/SearchField.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Material(child: SearchField()),
          ),
          Container(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              children: [
                GestureDetector(
                  child: GridCard(
                      "Appointments", const Icon(Icons.calendar_month)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Appoinments())));
                  },
                ),
                GestureDetector(
                  child: GridCard(
                      "Records", const Icon(Icons.receipt_long_rounded)),
                ),
                GestureDetector(
                  child: GridCard("Settings", const Icon(Icons.settings)),
                )
              ],
              shrinkWrap: true,
            ),
          )
        ],
      ),
      drawer: const NavDrawer(),
    );
  }
}

class _CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var term in SearchTerms.searchTerms) {
      if (term.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(term);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var term in SearchTerms.searchTerms) {
      if (term.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(term);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
