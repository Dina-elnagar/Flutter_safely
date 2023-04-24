import 'package:flutter/material.dart';
void main ()
{
  runApp(Ascreen());
}
class Ascreen extends StatelessWidget {

  Widget build(BuildContext context)
  {
    return MaterialApp(

       home:
       Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/popo.jpeg',),
              fit: BoxFit.cover,
            )
        ),

         child: Column(mainAxisAlignment: MainAxisAlignment.end,
           children: [

             Row( mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(32),
                   child: Container(
                     width:238,
                     height: 55,


                     child: ElevatedButton(
                       style:ElevatedButton.styleFrom(
                         primary: Colors.red,
                         elevation: 20,
                         shape: StadiumBorder()

                       ),
                       onPressed: () {  },
                       child:  Text('Stop',style: TextStyle(fontSize: 40,color: Colors.white,)),
                     ),
                   ),
                 ),
               ],
             ),
           ],
         ),
        ),


    );

  }
}