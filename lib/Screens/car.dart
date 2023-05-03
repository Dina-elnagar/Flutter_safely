import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:udemy_flutter/Screens/homescreen.dart';
import 'package:udemy_flutter/auth_services.dart';
import 'package:udemy_flutter/globals.dart';
import 'package:http/http.dart' as http;




class carscreen extends StatefulWidget {

  // const carscreen({Key? key , required this.title}) : super(key: key);
  static const String screenRoute = 'carscreen';
  // final String title;

  // List list;
  // int index;
  // carscreen({required this.index , required this.list, required this.title}) ;


  @override
  State<carscreen> createState() => _carscreen();
}

class _carscreen extends State<carscreen> {
  //DatabaseHelper databaseHelper =  addcarData();
  final auth = AuthServices();
  // String _carmodel = '';
  // String _carcolor = '';
  // String _platenumber = '';
  TextEditingController carmodelController =  TextEditingController();
  TextEditingController carcolorController = TextEditingController();
  TextEditingController platenumberController =  TextEditingController();
  List<Car> cars = List.empty(growable: true);

  int selectedIndex = -1;


  @override
  // void initState(){
  //   carmodelController = new TextEditingController(text: widget.list[widget.index]['carmodel']);
  //   carcolorController = new TextEditingController(text: widget.list[widget.index]['carcolor']);
  //   platenumberController = new TextEditingController(text: widget.list[widget.index]['platenumber']);
  // }

  // addcardataPressed() async {
  //   if (_carmodel.isNotEmpty && _carcolor.isNotEmpty && _platenumber.isNotEmpty) {
  //     http.Response response = await AuthServices.post(_carmodel,_carcolor,_platenumber);
  //     Map responseMap = jsonDecode(response.body);
  //     if (response.statusCode == 200) {
  //       // Navigator.push(
  //       //     context,
  //       //     MaterialPageRoute(
  //       //       builder: (BuildContext context) => const HomeScreen(),
  //       //     ));
  //     } else {
  //       errorSnackBar(context, responseMap.values.first);
  //     }
  //   } else {
  //     errorSnackBar(context, 'enter all required fields');
  //   }
  // }
  //
  //
  // updatecardataPressed() async {
  //   if (_carmodel.isNotEmpty && _carcolor.isNotEmpty && _platenumber.isNotEmpty) {
  //     http.Response response = await AuthServices.put2(_carmodel,_carcolor,_platenumber);
  //     Map responseMap = jsonDecode(response.body);
  //     if (response.statusCode == 200) {
  //       // Navigator.push(
  //       //     context,
  //       //     MaterialPageRoute(
  //       //       builder: (BuildContext context) => const HomeScreen(),
  //       //     ));
  //     } else {
  //       errorSnackBar(context, responseMap.values.first);
  //     }
  //   } else {
  //     errorSnackBar(context, 'enter all required fields');
  //   }
  // }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2c363b),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2c363b),
        centerTitle: true,
        title: const Text('Car'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFFffae46),
          ), onPressed: () {
          Navigator.pushNamed(context, HomeScreen.screenRoute);
        },
        ),
      ),


      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
              controller: carmodelController,
              decoration: const InputDecoration(
                  hintText: 'Car model',
                  hintStyle: TextStyle(
                      color: Colors.white
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ))),

              // onChanged: (value) {
              //   _carmodel = value;
              // },
            ),
            const SizedBox(height: 10),
            TextField(
              controller: carcolorController,
              keyboardType: TextInputType.text,
              maxLength: 10,
              decoration: const InputDecoration(
                  hintText: 'Car color',
                  hintStyle: TextStyle(
                      color: Colors.white
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ))),
              // onChanged: (value) {
              //   _carcolor = value;
              // },
            ),
            TextField(
              controller: platenumberController,
              decoration: const InputDecoration(
                  hintText: 'Plate Number',
                  hintStyle: TextStyle(
                      color: Colors.white
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ))),
              // onChanged: (value) {
              //   _platenumber = value;
              // },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      auth.addcarData(
                        carmodelController.text.trim(), carcolorController.text.trim(),
                        platenumberController.text.trim(),);
                      //addcardataPressed();
                      String model = carmodelController.text.trim();
                      String color = carcolorController.text.trim();
                      String plate_NO = platenumberController.text.trim();
                      if (model.isNotEmpty && color.isNotEmpty) {
                        setState(() {
                          carmodelController.text = '';
                          carcolorController.text = '';
                          platenumberController.text = '';
                          cars.add(Car(model: model, color: color, plate_NO: plate_NO));
                        });
                      }
                      //
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFffae46),),
                    child: const Text('Save')),
                ElevatedButton(
                     onPressed: () {
                       auth.editcarData(
                        carmodelController.text.trim(), carcolorController.text.trim(),
                        platenumberController.text.trim(),);
                      //updatecardataPressed();
                      String model = carmodelController.text.trim();
                      String color = carcolorController.text.trim();
                      String plate_NO = platenumberController.text.trim();
                      if (model.isNotEmpty && color.isNotEmpty && plate_NO.isNotEmpty) {
                        setState(() {
                          carmodelController.text = '';
                          carcolorController.text = '';
                          platenumberController.text = '';
                          cars[selectedIndex].model = model;
                          cars[selectedIndex].color = color;
                          cars[selectedIndex].plate_NO = plate_NO;
                          selectedIndex = -1;
                        });
                      }
                      //
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFffae46),),
                    child: const Text('Update')),
              ],
            ),
            const SizedBox(height: 10),
            cars.isEmpty
                ? const Text(
              'No cars yet',
              style: TextStyle(color: Colors.white,
                  fontSize: 22),
            )
                : Expanded(
              child: ListView.builder(
                itemCount: cars.length,
                itemBuilder: (context, index) => getRow(index),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:
          index % 2 == 0 ? Colors.deepPurpleAccent : Colors.purple,
          foregroundColor: Colors.white,
          child: Text(
            cars[index].model[0],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cars[index].model,
              style:
              const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(cars[index].color),
            Text(cars[index].plate_NO),
          ],
        ),

        trailing: SizedBox(
          width: 70,
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    //
                    carmodelController.text = cars[index].model;
                    carcolorController.text = cars[index].color;
                    platenumberController.text = cars[index].plate_NO;
                    setState(() {
                      selectedIndex = index;
                    });
                    //
                  },
                  child: const Icon(Icons.edit)),
              InkWell(
                  onTap: (() {
                    //
                    setState(() {
                      cars.removeAt(index);
                    });
                    //
                  }),
                  child: const Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}
class Car {
  String model;
  String color;
  String plate_NO;
  Car({required this.model, required this.color, required this.plate_NO});
}