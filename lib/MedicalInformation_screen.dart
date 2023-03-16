import 'package:flutter/material.dart';

class MedicalInformationScreen extends StatefulWidget {


  @override
  State<MedicalInformationScreen> createState() => _MedicalInformationScreenState();
  }

  class _MedicalInformationScreenState extends State<MedicalInformationScreen>
  {
      bool Yes = false;
      bool No = false;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor:Color(0xFF3E3B3B),
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      leading: Icon(
          Icons.keyboard_backspace,
          color: Colors.orangeAccent),
      title: Text('Medical Information',),
    ),
    body: Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Text('Do you have a blood pressure ?'),
              ],
            ),
            Column(
                children: [
                  Row(
                    children: [
                      Text('Yes'),
                      Checkbox(
                          activeColor: Colors.orangeAccent,
                          checkColor: Colors.white,
                          value: Yes,
                          onChanged: (value) {
                            setState(() {
                              Yes= value!;
                            });
                          }),
                    ],
                  ),
              SizedBox(
                width: 150.0,
              ),
              Row(
                children: [
                  Text('No'),
                  Checkbox(
                      activeColor: Colors.orangeAccent,
                      checkColor: Colors.white,
                      value: No,
                      onChanged: (value) {
                        setState(() {
                          No= value!;
                        });
                      }),
                ],
              ),

],
            ),
          ],
        ),
      ],
    ),
  );
  }
}
