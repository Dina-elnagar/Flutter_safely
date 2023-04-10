import 'package:flutter/material.dart';
import 'package:udemy_flutter/Screens/homescreen.dart';


class carscreen extends StatefulWidget {
  const carscreen({Key? key}) : super(key: key);
  static const String screenRoute = 'carscreen';

  @override
  State<carscreen> createState() => _carscreen();
}

class _carscreen extends State<carscreen> {
  TextEditingController carmodelController = TextEditingController();
  TextEditingController carcolorController = TextEditingController();
  TextEditingController platenumberController = TextEditingController();
  List<Car> cars = List.empty(growable: true);

  int selectedIndex = -1;

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
            ),
            const SizedBox(height: 10),
            TextField(
              controller: carcolorController,
              keyboardType: TextInputType.number,
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
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      //
                      String carmodel = carmodelController.text.trim();
                      String carcolor = carcolorController.text.trim();
                      String platenumber = platenumberController.text.trim();
                      if (carmodel.isNotEmpty && carcolor.isNotEmpty) {
                        setState(() {
                          carmodelController.text = '';
                          carcolorController.text = '';
                          platenumberController.text = '';
                          cars.add(Car(carmodel: carmodel, carcolor: carcolor, platenumber: platenumber));
                        });
                      }
                      //
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFffae46),),
                    child: const Text('Save')),
                ElevatedButton(
                    onPressed: () {
                      //
                      String carmodel = carmodelController.text.trim();
                      String carcolor = carcolorController.text.trim();
                      String platenumber = platenumberController.text.trim();
                      if (carmodel.isNotEmpty && carcolor.isNotEmpty && platenumber.isNotEmpty) {
                        setState(() {
                          carmodelController.text = '';
                          carcolorController.text = '';
                          platenumberController.text = '';
                          cars[selectedIndex].carmodel = carmodel;
                          cars[selectedIndex].carcolor = carcolor;
                          cars[selectedIndex].platenumber = platenumber;
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
            cars[index].carmodel[0],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cars[index].carmodel,
              style:
              const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(cars[index].carcolor),
            Text(cars[index].platenumber),
          ],
        ),

        trailing: SizedBox(
          width: 70,
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    //
                    carmodelController.text = cars[index].carmodel;
                    carcolorController.text = cars[index].carcolor;
                    platenumberController.text = cars[index].platenumber;
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
  String carmodel;
  String carcolor;
  String platenumber;
  Car({required this.carmodel, required this.carcolor, required this.platenumber});
}

