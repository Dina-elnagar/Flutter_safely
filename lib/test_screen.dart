import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen>
{
  var FirstNameController  = TextEditingController();
  var LastNameController  = TextEditingController();
  var PhoneNumberController  = TextEditingController();
  var EmailController  = TextEditingController();
  var passwordController = TextEditingController();
  var ConfirmpasswordController = TextEditingController();
  var DateOfBirthController = TextEditingController();
  var AddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF44040),
      appBar: AppBar(
     leading: Icon(
       Icons.keyboard_backspace,
     ),
        title: Text(
          'Personal Information'
        ),
      ),
      body:Container(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: FirstNameController,
                    onChanged: (String value)
                    {
                      print(value);

                    },
                    decoration: InputDecoration(
                      labelText: 'First Name',
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
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: LastNameController,
                    onChanged: (String value)
                    {
                      print(value);

                    },
                    decoration: InputDecoration(
                      labelText: 'Last Name',
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
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: PhoneNumberController,
                    onChanged: (String value)
                    {
                      print(value);

                    },
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
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
                    height: 20.0,
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
                    height: 20.0,
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
                  TextFormField(
                    controller: ConfirmpasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onChanged: (String value)
                    {
                      print(value);

                    },
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
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
                  TextFormField(
                    controller: DateOfBirthController,
                    onChanged: (String value)
                    {
                      print(value);

                    },
                    decoration: InputDecoration(
                      labelText: 'Date Of Birth',
                      suffixIcon: Icon(
                        Icons.date_range_sharp,
                      ),
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
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.grey[300],
                        ),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/Mars_symbol.svg.png'),
                              width: 50.0,
                              height: 50.0,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize:20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                     SizedBox(
                       width: 20.0,
                     ),
                     Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/Venus_symbol.svg.png'),
                              height: 50.0,
                              width: 50.0,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize:20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: AddressController,
                    onChanged: (String value)
                    {
                      print(value);

                    },
                    decoration: InputDecoration(
                      labelText: 'Address',
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
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.orangeAccent,
              child: MaterialButton(onPressed:(){},
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
