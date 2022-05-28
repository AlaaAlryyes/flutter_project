import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/views/widgets/PhoneField.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneRegisteration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 100),
          child: Image.network(
              "https://ouch-cdn2.icons8.com/5CvtT4p73YbjSfIBHj_gZaGPInYGr9vvi1xOWVhihUM/rs:fit:256:144/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvODcw/LzAwNjIzZGE4LTkx/ZjgtNGU3MS04OTEw/LWY4N2MwNDJjYmM0/My5zdmc.png"),
        ),
        Container(
          child: IntlPhoneField(
            decoration: InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            initialCountryCode: 'PS',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
          margin: EdgeInsets.symmetric(horizontal: 30),
        ),
        TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: Colors.blue),
          onPressed: () {},
          child: const Text('Continue'),
        ),
      ],
    ));
  }
}
