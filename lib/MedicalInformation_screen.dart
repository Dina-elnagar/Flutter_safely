import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/CarInformation_screen.dart';
import 'package:udemy_flutter/personalinformaion_screen.dart';
class MedicalInformationScreen extends StatefulWidget {
  static const String screenRoute = 'medicalinformation_screen';
  @override
  State<MedicalInformationScreen> createState() => _MedicalInformationScreenState();
  }
  class _MedicalInformationScreenState extends State<MedicalInformationScreen>
  {
      bool Yes = false;
      bool No = false;
      bool yes = false;
      bool no = false;
      var BloodTypeController  = TextEditingController();
      var HealthProblemsController = TextEditingController();
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
      Navigator.pushNamed(context, PersonalInformationScreen.screenRoute);
    },
  ),
      title: Text('Medical Information',),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do you have a blood pressure ?',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Text(
                'Yes',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Checkbox(
                  activeColor: Colors.orangeAccent,
                  checkColor: Colors.white,
                  value: Yes,
                  onChanged: (value) {
                    setState(() {
                      Yes= value!;
                    });
                  }),
              SizedBox(
                width: 180.0,
              ),
              Text(
                'No',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
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
          SizedBox(
            height: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Do you have diabetes problems ?',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Text(
                    'yes',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Checkbox(
                      activeColor: Colors.orangeAccent,
                      checkColor: Colors.white,
                      value: yes,
                      onChanged: (value) {
                        setState(() {
                          yes= value!;
                        });
                      }),
                  SizedBox(
                    width: 180.0,
                  ),
                  Text(
                    'no',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Checkbox(
                      activeColor: Colors.orangeAccent,
                      checkColor: Colors.white,
                      value: no,
                      onChanged: (value) {
                        setState(() {
                          no= value!;
                        });
                      }),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: BloodTypeController,
            onChanged: (String value)
            {
              print(value);

            },
            decoration: InputDecoration(
              labelText: 'Blood Type',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              focusedBorder:OutlineInputBorder(
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
            controller: HealthProblemsController,
            onChanged: (String value)
            {
              print(value);

            },
            decoration: InputDecoration(
              labelText: 'Health Problems',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              focusedBorder:OutlineInputBorder(
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
          Container(
            width: double.infinity,
            color: Color(0xFFffae46),
            child: MaterialButton(
              onPressed: ()
              {
                print(BloodTypeController.text);
                print(HealthProblemsController.text);
                Navigator.pushNamed(context, CarInformationScreen.screenRoute);
              },
              child:Text(
                'Next',
                style: TextStyle(
                  color:Colors.white,
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
