import 'package:flutter/material.dart';

class EmergencyContactScreen extends StatefulWidget
{
  @override
  State<EmergencyContactScreen> createState() => _EmergencyContactScreenState();
}

class _EmergencyContactScreenState extends State<EmergencyContactScreen> {
  var Contact1Controller = TextEditingController();
  var Contact2Controller = TextEditingController();
  var Contact3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E3B3B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.keyboard_backspace,
          color: Colors.orangeAccent),
        title: Text('Emergency Contact',),
                    ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: Contact1Controller,
              onChanged: (String value) {
                print(value);
              },
              decoration: InputDecoration(
                labelText: 'Contact 1',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: Contact2Controller,
              onChanged: (String value) {
                print(value);
              },
              decoration: InputDecoration(
                labelText: 'Contact 2',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: Contact3Controller,
              onChanged: (String value) {
                print(value);
              },
              decoration: InputDecoration(
                labelText: 'Contact 3',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Container(
              width: double.infinity,
              color: Colors.orangeAccent,
              child: MaterialButton(
                onPressed: () {
                  print(Contact1Controller.text);
                  print(Contact2Controller.text);
                  print(Contact3Controller.text);
                },
                child: Text(
                  'Finish',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
