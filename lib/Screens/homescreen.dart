import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:udemy_flutter/Screens/editprofile.dart';
import 'package:udemy_flutter/Screens/settings.dart';
import 'package:udemy_flutter/Screens/contacts.dart';
import 'package:udemy_flutter/Screens/car.dart';
import 'Ascreen.dart';



class HomeScreen extends StatefulWidget {
  static const String screenRoute = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  bool isMale = true;

  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFF2c363b),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2c363b),
        centerTitle: true,
        title: const Text(
          "Home screen",
        ),
      ),
      body: Column(
        children: [
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.all(20.0),
          //     child: Row(
          //       children:
          //       [
          //         Expanded(
          //           child: GestureDetector(
          //             onTap: (){
          //               setState(()
          //               {
          //                 isMale = true;
          //               });
          //             },
          //             child: Container(
          //
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10.0,),
          //                 color: isMale ? const Color(0xFFffae46) : Colors.grey,
          //               ),
          //
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: const [
          //                   Icon(
          //                       Icons.car_rental,
          //                       size: 70.0,
          //                     color: Colors.white,
          //                   ),
          //                   SizedBox(
          //                     height: 15.0,
          //                     ),
          //                   Text(
          //                     'Car A',
          //                       style: TextStyle(
          //                         fontSize: 25.0,
          //                         fontWeight: FontWeight.bold,
          //                         color: Colors.white,
          //                       ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //         const SizedBox(
          //           width: 20.0,
          //         ),
          //         Expanded(
          //           child: GestureDetector(
          //             onTap: (){
          //               setState(()
          //               {
          //                 isMale = false;
          //               });
          //             },
          //             child: Container(
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10.0,),
          //                 color: isMale ?  Colors.grey : const Color(0xFFffae46)
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: const [
          //
          //                   Icon(
          //                       Icons.car_rental_outlined,
          //                       size: 70.0,
          //                       color: Colors.white,
          //                   ),
          //                   SizedBox(
          //                     height: 15.0,
          //                     ),
          //                   Text(
          //                     'Car B',
          //                       style: TextStyle(
          //                         fontSize: 25.0,
          //                         fontWeight: FontWeight.bold,
          //                         color: Colors.white,
          //                       ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ), //Car



          Expanded
            (
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, EditProfileUI.screenRoute);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0,),
                    color: const Color(0xFFffae46),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.person,
                        size: 70.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ), // Profile


          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: GestureDetector(
                onTap: () {
                  _save('0');
                  Navigator.pushNamed(context, carscreen.screenRoute);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0,),
                    color: const Color(0xFFffae46),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.car_rental,
                        size: 70.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Car',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ), //car



          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(()
                        {
                          Navigator.pushNamed(context, contactscreen.screenRoute);
                        });
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: const Color(0xFFffae46),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.contacts,
                              size: 60.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Contacts',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, SettingsPage.screenRoute);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: const Color(0xFFffae46)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [

                            Icon(
                              Icons.settings,
                              size: 60.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push
                          (context, MaterialPageRoute(
                          builder: (context) => Ascreen(),
                        ),
                        );
                      },
                      child: Text(
                        'SAFELY',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(1000, 50),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFffae46),
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), //contacts & settings
        ],
      ),


    );
  }
}