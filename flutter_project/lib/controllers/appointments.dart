// ignore: non_constant_identifier_names
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/models/user.dart';
import 'package:flutter_project/views/widgets/AppointmnetListItem.dart';
import 'dart:convert';
import '../models/Appointment.dart';
import '../models/Doctor.dart';

DatabaseReference ref = FirebaseDatabase.instance.ref();
void storeAppointment(Appointment appointment) async {
  await ref.child('appointments').set({
    "userID": appointment.userID,
    "doctorID": appointment.doctorID,
    "date": appointment.date
  });
}

String getDoctorName(String id) {
  String name = "";
  ref.child("doctors/$id").onValue.listen((event) {
    name = Doctor.fromJson(jsonDecode(event.snapshot.value.toString())).name;
  });
  return name;
}

List<Widget> fetchAppointments(String id) {
  List<Widget> l = [];
  DatabaseReference appointmentsRef = ref.child("appointments/$id");
  appointmentsRef.onValue.listen((event) {
    for (final child in event.snapshot.children) {
      Appointment appointment =
          Appointment.fromJson(jsonDecode(child.toString()));
      l.add(AppointmentListItem(
          getDoctorName(appointment.doctorID), appointment.date));
    }
  }, onError: (error) {});
  return l;
}

int appointmentsCount(String? id) {
  int result = 0;
  DatabaseReference appointmentsRef = ref.child("appointments/$id");
  appointmentsRef.onValue.listen((event) {
    result = event.snapshot.children.length;
  }, onError: (error) {});
  return result;
}

void cancelAppointment(Appointment appointment) {}
