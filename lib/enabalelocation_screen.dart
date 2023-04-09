import 'package:flutter/material.dart';
class EnableLocationScreen extends StatelessWidget {
  static const String screenRoute= 'enabledlocation';

  var CancleController  = TextEditingController();
  var AllowController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/WhatsApp Image 2023-04-09 at 10.05.04 PM.jpeg',),
            fit: BoxFit.fill,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Please Allow Location and Bluetooth services to continue using the app !',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),

                Row (children: [
                  MaterialButton(
                    onPressed: ()
                    {
                      print (CancleController.text);
                    },
                    child: Text('Cancle',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  MaterialButton(
                    onPressed: ()
                    {
                      print (AllowController.text);
                    },
                    child: Text('Allow',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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