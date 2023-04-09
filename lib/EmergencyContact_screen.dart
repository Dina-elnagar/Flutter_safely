import 'package:flutter/material.dart';
import 'package:udemy_flutter/CarInformation_screen.dart';
class EmergencyContactScreen extends StatefulWidget {
  static const String screenRoute = 'emergencycontact_screen';
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
      backgroundColor: Color(0xFF2c363b),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading:IconButton(
      icon: const Icon(
      Icons.arrow_back,
        color: Color(0xFFffae46),),
      onPressed: (){
        Navigator.pushNamed(context, CarInformationScreen.screenRoute);
      },
    ),
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
              color: Color(0xFFffae46),
              child: MaterialButton(
                onPressed: () {
                  print(Contact1Controller.text);
                  print(Contact2Controller.text);
                  print(Contact3Controller.text);

                },
                child: Text(
                  'Finsh',
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
