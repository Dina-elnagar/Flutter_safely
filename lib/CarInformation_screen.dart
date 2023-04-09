import 'package:flutter/material.dart';
import 'package:udemy_flutter/EmergencyContact_screen.dart';
import 'package:udemy_flutter/MedicalInformation_screen.dart';
class CarInformationScreen extends StatefulWidget
{
  static const String screenRoute = 'carinformation_screen';
  @override
  State<CarInformationScreen> createState() => _CarInformationScreenState();
}
class _CarInformationScreenState extends State<CarInformationScreen> {
  var  CarModelController  = TextEditingController();
  var CarColorController  = TextEditingController();
  var PlateNumberController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF2c363b),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading:IconButton(
      icon: const Icon(
      Icons.arrow_back,
        color: Color(0xFFffae46),),
      onPressed: (){
        Navigator.pushNamed(context, MedicalInformationScreen.screenRoute);
      },
    ),
        title: Text('Car Information',),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
              TextFormField(
                controller: CarModelController,
                onChanged: (String value)
                {
                  print(value);

                },
                decoration: InputDecoration(
                  labelText: 'Car Model',
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
                controller: CarColorController,
                onChanged: (String value)
                {
                  print(value);

                },
                decoration: InputDecoration(
                  labelText: 'Car Color',
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
                controller: PlateNumberController,
                onChanged: (String value)
                {
                  print(value);

                },
                decoration: InputDecoration(
                  labelText: 'Plate Number',
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
                height: 100.0,
              ),
              Container(
                width: double.infinity,
                color: Color(0xFFffae46),
                child: MaterialButton(
                  onPressed: ()
                  {
                    print(CarModelController.text);
                    print(CarColorController.text);
                    print(PlateNumberController.text);
                    Navigator.pushNamed(context, EmergencyContactScreen.screenRoute);
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
