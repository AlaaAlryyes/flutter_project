import 'package:flutter/material.dart';
import 'package:flutter_project/controllers/doctorList.dart';
import 'package:flutter_project/data/doctor_filter.dart';
import 'package:flutter_project/views/widgets/DoctorListItem.dart';
import 'package:flutter_project/views/widgets/DoctorsFilter.dart';

import '../../models/Doctor.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DoctorsFilter(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Align(
                  child: Text("All Specialties"),
                  alignment: Alignment.centerLeft),
            ),
            ListView.builder(
              itemBuilder: ((context, index) =>
                  DoctorListItem(Doctor("", "Shady", "Cardiologist", "", 5))),
              shrinkWrap: true,
              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }

  bool isFieldsEmpty() {
    if (DoctorFilter.specialty.isEmpty &&
        DoctorFilter.area.isEmpty &&
        DoctorFilter.date.isEmpty) {
      return true;
    }
    return false;
  }
}
