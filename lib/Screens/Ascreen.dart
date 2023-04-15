import 'package:flutter/material.dart';

class Ascreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/ooo.jfif',),
              fit: BoxFit.cover,
            )
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.phone_iphone_rounded))
          ],
        ),


      ),
    );
  }
}
