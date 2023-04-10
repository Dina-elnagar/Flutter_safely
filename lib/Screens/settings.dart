import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/Screens/car.dart';
import 'package:udemy_flutter/Screens/contacts.dart';
import 'package:udemy_flutter/Screens/editprofile.dart';
import 'package:udemy_flutter/Screens/homescreen.dart';
import 'package:udemy_flutter/login_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  static const String screenRoute = 'SettingsPage';
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2c363b),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2c363b),
        centerTitle: true,
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFFffae46),
          ), onPressed: () {
          Navigator.pushNamed(context, HomeScreen.screenRoute);

        },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(
                    Icons.person,
                    color: Colors.white
                ),
                SizedBox(width: 10),
                Text("Account", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white))
              ],
            ),


            const Divider(height:  20, thickness: 1),
            const SizedBox(height: 10),
            buildAccountOption1(context, 'Edit profile'),
            buildAccountOption2(context, 'Edit car information'),
            buildAccountOption3(context, 'Edit contacts'),
            // buildAccountOption(context, 'Change Blood Type'),
            const SizedBox(height: 15),
            Row(
              children: const [
                Icon(
                    Icons.miscellaneous_services,
                    color: Colors.white
                ),
                SizedBox(width: 10),
                Text("Services", style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold,
                    color: Colors.white))
              ],
            ),


            const Divider(height: 20, thickness: 1),
            const SizedBox(height: 10),
            buildNotificationOption('Location services', valNotify1, onChangeFunction1),
            buildNotificationOption('Bluetooth services', valNotify2, onChangeFunction2),
            const SizedBox(height: 20),
            Row(
              children: const [
                Icon(
                    Icons.miscellaneous_services,
                    color: Colors.white
                ),
                SizedBox(width: 10),
                Text("Contact us", style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold,
                    color: Colors.white))
              ],
            ),


            const Divider(height:  20, thickness: 1),
            const SizedBox(height: 10),
            buildAccountOption4(context, 'About us'),
            buildAccountOption5(context, 'Report a problem'),
            buildAccountOption6(context, 'Feedback'),
            const SizedBox(height: 50),
            Center(
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      backgroundColor: const Color(0xFFffae46),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.screenRoute);
                  } ,
                  child: const Text("Sign out", style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 2.2,
                      color: Colors.white
                  ),)
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]
          )),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.amber,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }


  GestureDetector buildAccountOption1(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        // showDialog(context: context, builder: (BuildContext context) {
        //   return AlertDialog(
        //     title: Text(title),
        //     content: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       children: const [
        //         Text("Option 1"),
        //         Text("Option 2"),
        // ],
        // ),
        // actions: [
        //   TextButton(
        //       onPressed: () {
        //         Navigator.of(context).pop();
        //       },
        //       child: const Text("Close")
        //   )
        // ],
        // );
        // });
        Navigator.pushNamed(context, EditProfileUI.screenRoute);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]
            )),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey)
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOption2(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        // showDialog(context: context, builder: (BuildContext context) {
        //   return AlertDialog(
        //     title: Text(title),
        //     content: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       children: const [
        //         Text("Option 1"),
        //         Text("Option 2"),
        // ],
        // ),
        // actions: [
        //   TextButton(
        //       onPressed: () {
        //         Navigator.of(context).pop();
        //       },
        //       child: const Text("Close")
        //   )
        // ],
        // );
        // });
        Navigator.pushNamed(context, carscreen.screenRoute);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]
            )),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey)
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOption3(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        // showDialog(context: context, builder: (BuildContext context) {
        //   return AlertDialog(
        //     title: Text(title),
        //     content: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       children: const [
        //         Text("Option 1"),
        //         Text("Option 2"),
        // ],
        // ),
        // actions: [
        //   TextButton(
        //       onPressed: () {
        //         Navigator.of(context).pop();
        //       },
        //       child: const Text("Close")
        //   )
        // ],
        // );
        // });
        Navigator.pushNamed(context, contactscreen.screenRoute);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]
            )),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey)
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOption4(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        // showDialog(context: context, builder: (BuildContext context) {
        //   return AlertDialog(
        //     title: Text(title),
        //     content: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       children: const [
        //         Text("Option 1"),
        //         Text("Option 2"),
        // ],
        // ),
        // actions: [
        //   TextButton(
        //       onPressed: () {
        //         Navigator.of(context).pop();
        //       },
        //       child: const Text("Close")
        //   )
        // ],
        // );
        // });
        Navigator.pushNamed(context, HomeScreen.screenRoute);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]
            )),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey)
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOption5(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        // showDialog(context: context, builder: (BuildContext context) {
        //   return AlertDialog(
        //     title: Text(title),
        //     content: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       children: const [
        //         Text("Option 1"),
        //         Text("Option 2"),
        // ],
        // ),
        // actions: [
        //   TextButton(
        //       onPressed: () {
        //         Navigator.of(context).pop();
        //       },
        //       child: const Text("Close")
        //   )
        // ],
        // );
        // });
        Navigator.pushNamed(context, HomeScreen.screenRoute);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]
            )),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey)
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOption6(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Option 1"),
                Text("Option 2"),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Close")
              )
            ],
          );
        });
        // Navigator.pushNamed(context, HomeScreen.screenRoute);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]
            )),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey)
          ],
        ),
      ),
    );
  }



}
