import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_project/controllers/booking.dart';
import 'package:flutter_project/views/screens/DoctorsList.dart';
import 'package:flutter_project/views/screens/Home.dart';
import 'package:flutter_project/views/screens/Login.dart';
import 'package:flutter_project/views/screens/PhoneRegisteration.dart';
import 'package:flutter_project/views/screens/SignIn.dart';
import 'firebase_options.dart';
import 'package:flutter_project/views/screens/DoctorDetails.dart';
import 'package:flutter_project/views/screens/Payment.dart';

void main() async {
  /*runApp(MaterialApp(
    home: Login(),
  ));*/

  runApp(MaterialApp(
    home: SignIn(),
  ));

/*  runApp(MaterialApp(
    home: PhoneRegisteration(),
  ));*/

  /*runApp(MaterialApp(
    home: Appoinments(),
  ));*/

  /*runApp(MaterialApp(
    home: DoctorDetails(),
  ));*/

  /*runApp(MaterialApp(
    home: MedicalRecordsScreen(),
  ));*/

  /*runApp(MaterialApp(
    home: Home(),
  ));*/

  /*runApp(MaterialApp(
    home: DoctorsList(),
  ));*/

  /*runApp(const MaterialApp(
    home: Payment(),
  ));*/

  //testWidget();
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {}

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return SignIn();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Container();
      },
    );
  }
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

void testWidget(Widget w) {
  runApp(MaterialApp(
    home: Scaffold(
        body: Center(
      child: w,
    )),
  ));
}
