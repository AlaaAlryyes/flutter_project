import 'package:flutter/material.dart';
import 'package:flutter_project/views/screens/Appointments.dart';
import 'package:flutter_project/views/screens/DoctorsList.dart';
import 'package:flutter_project/views/screens/MedicalRecordsScreen.dart';
import 'package:flutter_project/views/widgets/DrawerListItem.dart';
import 'package:flutter_project/views/widgets/DrawerProfileHeader.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var iconColor = Colors.blue[900];
    return CustomScrollView(slivers: [
      SliverList(
          delegate: SliverChildListDelegate(
        ([
          DrawerProfileHeader(),
          DrawerListItem(
              Icon(
                Icons.calendar_month,
                color: iconColor,
              ),
              "My Appointments",
              Appoinments()),
          DrawerListItem(Icon(Icons.add_circle_outline, color: iconColor),
              "New Appoinment", const DoctorsList()),
          DrawerListItem(Icon(Icons.receipt_rounded, color: iconColor),
              "Medical Records", const MedicalRecordsScreen()),
          DrawerListItem(
              Icon(
                Icons.medical_services_outlined,
                color: iconColor,
              ),
              "Doctors",
              const DoctorsList())
        ]),
      ))
    ]);
  }
}
