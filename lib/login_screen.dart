import 'package:flutter/material.dart';
import 'package:udemy_flutter/personalinformaion_screen.dart';
class LoginScreen extends StatefulWidget {

 static const String screenRoute = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var EmailController  = TextEditingController();
  var passwordController = TextEditingController();

      @override

      Widget build(BuildContext context)
      {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/WhatsApp Image 2023-02-23 at 11.19.03 PM.jpeg',),
            fit: BoxFit.cover,
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
          child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Text(
          'Sign In',
           style: TextStyle(
           fontSize: 40.0,
           fontWeight: FontWeight.bold,
             color: Colors.white,
           ),
           ),
          SizedBox(
          height: 40.0,
          ),
           TextFormField(
          controller: EmailController,
          onChanged: (String value)
          {
          print(value);

          },
          decoration: InputDecoration(
          labelText: 'Email',
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
             height: 15.0,
          ),
           TextFormField(
          controller: passwordController,
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          onChanged: (String value)
          {
          print(value);

          },
          decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Colors.white
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white
            ),
          ),
          ),
          ),
          SizedBox(
          height: 20.0,
          ),
          Container(
          width: double.infinity,
          color: Colors.orangeAccent,
          child: MaterialButton(
          onPressed: ()
          {
          print(EmailController.text);
          print(passwordController.text);
          },
          child:
          Text(
          'Sign In',
          style: TextStyle(
            color:Colors.white,
          ),
          ),
          ),
          ),
           SizedBox(
          height: 10.0,
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
          'Don\'t have an account?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          TextButton(
          onPressed: () {
            Navigator.pushNamed(context, PersonalInformationScreen.screenRoute);
          },
          child: Text(
          'Register Now',
            style: TextStyle(
                color: Colors.white,
            ),
          ),
          ),
            SizedBox(
              height: 10.0,
            ),
            ],
          ),
          ],
        ),
          ),
          ),
          ),
          ),
      );
      }
}


