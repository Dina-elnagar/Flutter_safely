import 'package:flutter/material.dart';
import 'Cscreen.dart';
import 'homescreen.dart';


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
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.black,
                ),
                child:
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Are you Ok?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text('Our sensors detected unusual speed and stop,'
                          '  we just want to make sure everything is ok.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                      Row (children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child:SizedBox(
                            width: 200,
                            height: 40,
                            
                            child: ElevatedButton(onPressed: ()
                            {
                              Navigator.push
                              (context, MaterialPageRoute(
                                  builder: (context) => Cscreen(),
                              ),
                              );

                            },
                              style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                                            ),

                              child: const Text('Call Emergency',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:100 ,
                          height:40,


                          child:ElevatedButton(onPressed: ()
                            {
                              var push = Navigator.push
                                (context, MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                              ),
                              );
                            },
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,

                            ),
                            child: const Text('Yes',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
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
          ),
        ),

      ),
    );
  }


}