import 'package:flutter/material.dart';
import 'package:udemy_flutter/CarInformation_screen.dart';
import 'package:udemy_flutter/EmergencyContact_screen.dart';
import 'package:udemy_flutter/MedicalInformation_screen.dart';
import 'package:udemy_flutter/login_screen.dart';
import 'package:udemy_flutter/personalinformaion_screen.dart';
import 'package:udemy_flutter/test_screen.dart';
import 'package:udemy_flutter/Screens/editprofile.dart';
import 'package:udemy_flutter/Screens/homescreen.dart';
import 'package:udemy_flutter/Screens/settings.dart';


void main()
{
  runApp(MYAPP());
}
class MYAPP extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
   return MaterialApp(
     debugShowCheckedModeBanner:false ,
     home:LoginScreen(),
    //    initialRoute: HomeScreen.screenRoute,
    //    routes: {
    //      HomeScreen.screenRoute: (context) => HomeScreen(),
    //      EditProfileUI.screenRoute: (context) =>  EditProfileUI(),
    //      SettingsPage.screenRoute: (context) => SettingsPage(),
    //      //'contactsscreen': (context) => contactsscreen(),
    //      //'carscreen': (context) => carscreen(),
    //    }
     );


  }
}
