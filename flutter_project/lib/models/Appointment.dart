import 'dart:convert';

import 'package:flutter_project/models/Doctor.dart';
import 'package:flutter_project/models/user.dart';

class Appointment {
  final String userID;
  final String doctorID;
  final String date;
  Appointment(this.userID, this.doctorID, this.date);

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      Appointment(json['userID'], json['doctorID'], json['date']);

  Map<String, dynamic> toJson() => {
        'userID': userID,
        'doctorID': doctorID,
        'date': date,
      };
}
