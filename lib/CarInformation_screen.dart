import 'package:flutter/material.dart';

class CarInformationScreen extends StatefulWidget
{
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
      backgroundColor:Color(0xFF3E3B3B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
            Icons.keyboard_backspace,
            color: Colors.orangeAccent),
        title: Text('Car Information',),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:Column(
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
                color: Colors.orangeAccent,
                child: MaterialButton(
                  onPressed: ()
                  {
                    print(CarModelController.text);
                    print(CarColorController.text);
                    print(PlateNumberController.text);
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
