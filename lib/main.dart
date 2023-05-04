import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/CarInformation_screen.dart';
import 'package:udemy_flutter/EmergencyContact_screen.dart';
import 'package:udemy_flutter/MedicalInformation_screen.dart';
import 'package:udemy_flutter/firebase_options.dart';
import 'package:udemy_flutter/login_screen.dart';
import 'package:udemy_flutter/personalinformaion_screen.dart';
import 'package:udemy_flutter/enabalelocation_screen.dart';
import 'package:udemy_flutter/Screens/editprofile.dart';
import 'package:udemy_flutter/Screens/homescreen.dart';
import 'package:udemy_flutter/Screens/settings.dart';
import 'Screens/car.dart';
import 'Screens/contacts.dart';
import 'firebase_options.dart';


Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MYAPP());
}

class MYAPP extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {


        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: LoginScreen.screenRoute,
          routes: {
            LoginScreen.screenRoute: (context) => LoginScreen(),
            PersonalInformationScreen.screenRoute: (context) => PersonalInformationScreen(),
            MedicalInformationScreen.screenRoute: (context) => MedicalInformationScreen(),
            CarInformationScreen.screenRoute: (context) => CarInformationScreen(),
            EmergencyContactScreen.screenRoute: (context) => EmergencyContactScreen(),
            EnableLocationScreen.screenRoute: (context) => EnableLocationScreen(),
            HomeScreen.screenRoute: (context) => HomeScreen(),
            EditProfileUI.screenRoute: (context) => EditProfileUI(),
            SettingsPage.screenRoute: (context) => SettingsPage(),
            contactscreen.screenRoute: (context) => contactscreen(),
            carscreen.screenRoute: (context) => carscreen(),
          },
        );

  }


  }
