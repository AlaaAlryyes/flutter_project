import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/views/widgets/MedicalRecord.dart';
import 'package:http/http.dart' as http;

String id = "";
DatabaseReference ref = FirebaseDatabase.instance.ref("records/$id/");

List<Widget> loadRecords() {
  List<Widget> list = [];

  ref.onValue.listen((DatabaseEvent event) {
    for (var element in event.snapshot.children) {
      //list.add(MedicalRecord(_name, _url, _date));
    }
  });
  return list;
}

void downloadClinicalRecord(String uri) async {
  var url = Uri.parse(uri);
  http.get(url).then((response) => File("").writeAsBytes(response.bodyBytes));
}

void downloadLabRecord(String uri) {
  var url = Uri.parse(uri);
  http.get(url).then((response) => File("").writeAsBytes(response.bodyBytes));
}

void downloadMedicines(String uri) {
  var url = Uri.parse(uri);
  http.get(url).then((response) => File("").writeAsBytes(response.bodyBytes));
}

void writeFile(String path) {}

void readFile(String path) {}
