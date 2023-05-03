// import 'package:flutter/material.dart';
// import 'package:udemy_flutter/Screens/homescreen.dart';
//
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Profile edit',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: EditProfileUI(),
//     );
//   }
// }
//
// class EditProfileUI extends StatefulWidget {
//   static const String screenRoute = 'EditProfileUI';
//
//   @override
//   _EditProfileUIState createState() => _EditProfileUIState();
// }
//
// class _EditProfileUIState extends State<EditProfileUI> {
//   bool isObscurePassword = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF2c363b),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF2c363b),
//         title: const Text('Profile'),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Color(0xFFffae46),
//           ), onPressed: () {
//           Navigator.pushNamed(context, HomeScreen.screenRoute);
//         },
//         ),
//       ),
//       body: Container(
//         padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
//         child: GestureDetector(
//           onTap: () {
//             FocusScope.of(context).unfocus();
//           },
//           child: ListView(
//             children: [
//               Center(
//                 child: Stack(
//                   children: [
//                     Container(
//                       width: 130,
//                       height: 130,
//                       decoration: BoxDecoration(
//                           border: Border.all(width: 4, color: Colors.white),
//                           boxShadow: [
//                             BoxShadow(
//                                 spreadRadius: 2,
//                                 blurRadius: 10,
//                                 color: Colors.black.withOpacity(0.1)
//                             )
//                           ],
//                           shape: BoxShape.circle,
//                           image: const DecorationImage(
//                               fit: BoxFit.cover,
//                               image: NetworkImage(
//                                   ''
//                               )
//                           )
//                       ),
//                     ),
//                     Positioned(
//                         bottom: 0,
//                         right: 0,
//                         child: Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             border: Border.all(
//                                 width: 4,
//                                 color: Colors.white
//                             ),
//                             color: Colors.amber,
//                           ),
//                           child: const Icon(
//                             Icons.edit,
//                             color: Colors.white,
//                           ),
//                         )
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 30),
//               buildTextField("First Name", "Enter Your Name", false),
//               buildTextField("Last Name", "Enter Your Name", false),
//               buildTextField("Email", "Enter Your Email", false),
//               // buildTextField("Password", "Enter Your Password", true),
//               // buildTextField("Blood Type", "Enter Your Blood Type", false),
//               buildTextField("Health problems", "Enter any health problems", false),
//               buildTextField("Address", "Enter Your Address", false),
//               buildTextField("Phone Number", "xxxxxxxxxxx", false),
//               const SizedBox(height: 30),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   OutlinedButton(
//                     onPressed: () {},
//                     style: OutlinedButton.styleFrom(
//                         backgroundColor: const Color(0xFFffae46),
//                         padding: const EdgeInsets.symmetric(horizontal: 50),
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
//                     ),
//                     child: const Text("Cancel", style: TextStyle(
//                         fontSize: 15,
//                         letterSpacing: 2,
//                         color: Colors.white
//                     )),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFFffae46),
//                         padding: const EdgeInsets.symmetric(horizontal: 50),
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
//                     ),
//                     child: const Text("Save", style: TextStyle(
//                         fontSize: 15,
//                         letterSpacing: 2,
//                         color: Colors.white
//                     )),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 30),
//       child: TextField(
//         obscureText: isPasswordTextField ? isObscurePassword : false,
//         decoration: InputDecoration(
//             suffixIcon: isPasswordTextField ?
//             IconButton(
//                 icon: const Icon(Icons.remove_red_eye, color: Colors.grey),
//                 onPressed: () {
//                   setState(() {
//                     isObscurePassword = !isObscurePassword;
//                   });
//                 }
//             ): null,
//             contentPadding: const EdgeInsets.only(bottom: 5),
//             labelText: labelText,
//             labelStyle:  const TextStyle(
//             color: Colors.white
//         ),
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             hintText: placeholder,
//             hintStyle: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white
//             )
//         ),
//       ),
//     );
//   }
// }



import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/Screens/homescreen.dart';
import 'package:udemy_flutter/auth_services.dart';
import 'package:udemy_flutter/globals.dart';
import 'package:http/http.dart' as http;


class EditProfileUI extends StatefulWidget {
  static const String screenRoute = 'EditProfileUI';
  const EditProfileUI({Key? key}) : super(key: key);


  @override
  _EditProfileUIState createState() => _EditProfileUIState();
}

class _EditProfileUIState extends State<EditProfileUI> {
//   bool isObscurePassword = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF2c363b),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF2c363b),
//         title: const Text('Profile'),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Color(0xFFffae46),
//           ), onPressed: () {
//           Navigator.pushNamed(context, HomeScreen.screenRoute);
//         },
//         ),
//       ),
//       body: Container(
//         padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
//         child: GestureDetector(
//           onTap: () {
//             FocusScope.of(context).unfocus();
//           },
//           child: ListView(
//             children: [
//               Center(
//                 child: Stack(
//                   children: [
//                     Container(
//                       width: 130,
//                       height: 130,
//                       decoration: BoxDecoration(
//                           border: Border.all(width: 4, color: Colors.white),
//                           boxShadow: [
//                             BoxShadow(
//                                 spreadRadius: 2,
//                                 blurRadius: 10,
//                                 color: Colors.black.withOpacity(0.1)
//                             )
//                           ],
//                           shape: BoxShape.circle,
//                           image: const DecorationImage(
//                               fit: BoxFit.cover,
//                               image: NetworkImage(
//                                   ''
//                               )
//                           )
//                       ),
//                     ),
//                     Positioned(
//                         bottom: 0,
//                         right: 0,
//                         child: Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             border: Border.all(
//                                 width: 4,
//                                 color: Colors.white
//                             ),
//                             color: Colors.amber,
//                           ),
//                           child: const Icon(
//                             Icons.edit,
//                             color: Colors.white,
//                           ),
//                         )
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 30),
//               buildTextField("First Name", "Enter Your Name", false),
//               buildTextField("Last Name", "Enter Your Name", false),
//               buildTextField("Email", "Enter Your Email", false),
//               // buildTextField("Password", "Enter Your Password", true),
//               // buildTextField("Blood Type", "Enter Your Blood Type", false),
//               buildTextField("Health problems", "Enter any health problems", false),
//               buildTextField("Address", "Enter Your Address", false),
//               buildTextField("Phone Number", "xxxxxxxxxxx", false),
//               const SizedBox(height: 30),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   OutlinedButton(
//                     onPressed: () {},
//                     style: OutlinedButton.styleFrom(
//                         backgroundColor: const Color(0xFFffae46),
//                         padding: const EdgeInsets.symmetric(horizontal: 50),
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
//                     ),
//                     child: const Text("Cancel", style: TextStyle(
//                         fontSize: 15,
//                         letterSpacing: 2,
//                         color: Colors.white
//                     )),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFFffae46),
//                         padding: const EdgeInsets.symmetric(horizontal: 50),
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
//                     ),
//                     child: const Text("Save", style: TextStyle(
//                         fontSize: 15,
//                         letterSpacing: 2,
//                         color: Colors.white
//                     )),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 30),
//       child: TextField(
//         obscureText: isPasswordTextField ? isObscurePassword : false,
//         decoration: InputDecoration(
//             suffixIcon: isPasswordTextField ?
//             IconButton(
//                 icon: const Icon(Icons.remove_red_eye, color: Colors.grey),
//                 onPressed: () {
//                   setState(() {
//                     isObscurePassword = !isObscurePassword;
//                   });
//                 }
//             ): null,
//             contentPadding: const EdgeInsets.only(bottom: 5),
//             labelText: labelText,
//             labelStyle:  const TextStyle(
//             color: Colors.white
//         ),
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             hintText: placeholder,
//             hintStyle: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white
//             )
//         ),
//       ),
//     );
//   }  old code

  String _firstname = '';
  String _lastname = '';
  // String _email = '';
  // String _password = '';
  String _healthproblems = '';
  String _address = '';

  // updatedataPressed() async {
  //   if (_firstname.isNotEmpty && _lastname.isNotEmpty
  //       && _healthproblems.isNotEmpty && _address.isNotEmpty) {
  //     http.Response response = await AuthServices.put(_firstname,_lastname, _healthproblems, _address);
  //     Map responseMap = jsonDecode(response.body);
  //     if (response.statusCode == 200) {
  //       // Navigator.push(
  //       //     context,
  //       //     MaterialPageRoute(
  //       //       builder: (BuildContext context) => const HomeScreen(),
  //       //     ));
  //     } else {
  //       errorSnackBar(context, responseMap.values.first);
  //     }
  //   } else {
  //     errorSnackBar(context, 'enter all required fields');
  //   }
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2c363b),
        appBar: AppBar(
          backgroundColor: const Color(0xFF2c363b),
          title: const Text('Profile'),
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
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1)
                              )
                            ],
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    ''
                                )
                            )
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 4,
                                  color: Colors.white
                              ),
                              color: Colors.amber,
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          )
                      )
                    ],
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [

                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your First Name',
                        ),
                        onChanged: (value) {
                          _firstname = value;
                        },
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your Last Name',
                        ),
                        onChanged: (value) {
                          _lastname = value;
                        },
                      ),


                      // const SizedBox(
                      //   height: 20,
                      // ),
                      // TextField(
                      //   decoration: const InputDecoration(
                      //     hintText: 'Enter your email',
                      //   ),
                      //   onChanged: (value) {
                      //     _email = value;
                      //   },
                      // ),
                      //
                      //
                      //
                      //
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      // TextField(
                      //   decoration: const InputDecoration(
                      //     hintText: 'Enter your password',
                      //   ),
                      //   onChanged: (value) {
                      //     _password = value;
                      //   },
                      // ),
                      //

                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter your Health Problems',
                        ),
                        onChanged: (value) {
                          _healthproblems = value;
                        },
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter your Address',
                        ),
                        onChanged: (value) {
                          _address = value;
                        },
                      ),

                      const SizedBox(
                        height: 30,
                      ),

                      // RoundedButton(
                      //   btnText: 'Save',
                      //   onBtnPressed: (sr) => updatedataPressed(),
                      // ),

                      ElevatedButton(
                        onPressed:() async {},   //updatedataPressed,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFffae46),
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                        ),
                        child: const Text("Save", style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.white
                        )),
                      )





                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        );
   }
}