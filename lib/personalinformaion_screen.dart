import 'package:flutter/material.dart';
import 'package:udemy_flutter/MedicalInformation_screen.dart';
import 'package:udemy_flutter/login_screen.dart';
class PersonalInformationScreen  extends StatefulWidget
{
  static const String screenRoute = 'personalinformation_screen';
  @override
  State<PersonalInformationScreen> createState() => _PersonalInformationScreenState();
}
class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  var FirstNameController  = TextEditingController();
  var LastNameController = TextEditingController();
  var PhoneNumberController = TextEditingController();
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  var ConfirmPasswordController = TextEditingController();
  var DateOfBirthController = TextEditingController();
  var AddressController = TextEditingController();

  bool Male = false;
  bool Female = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2c363b),
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        title:const Text(
            'Personal Information',
           style: TextStyle(
          fontWeight: FontWeight.bold,
           ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          color: Color(0xFFffae46),),
          onPressed: (){
            Navigator.pushNamed(context, LoginScreen.screenRoute);
          },
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                height: 15.0,
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
                height: 15.0,
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
                height: 15.0,
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
                controller: PasswordController,
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
                controller: ConfirmPasswordController,
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
                controller: DateOfBirthController,
                onChanged: (String value)
                {
                  print(value);

                },
                decoration: InputDecoration(
                  labelText: 'Date Of Birth',
                  suffixIcon: Icon(
                    Icons.date_range_sharp,
                    color: Colors.orangeAccent,
                  ),
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
                controller: AddressController,
                onChanged: (String value)
                {
                  print(value);

                },
                decoration: InputDecoration(
                  labelText: 'Adderss',
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
              Column(
                children: [
                  Text(
                    'Gender',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Text(
                    'Male',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Checkbox(
                      activeColor: Colors.orangeAccent,
                      checkColor: Colors.white,
                      value: Male,
                      onChanged: (value) {
                        setState(() {
                          Male= value!;
                        });
                      }),
                  SizedBox(
                    width: 180.0,
                  ),
                  Text(
                    'Female',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Checkbox(
                      activeColor: Colors.orangeAccent,
                      checkColor: Colors.white,
                      value: Female,
                      onChanged: (value) {
                        setState(() {
                          Female= value!;
                        });
                      }),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                color: Color(0xFFffae46),
                child: MaterialButton(
                  onPressed: ()
                  {
                    print(FirstNameController.text);
                    print(LastNameController.text);
                    print(PhoneNumberController.text);
                    print(EmailController.text);
                    print(PasswordController.text);
                    print(ConfirmPasswordController.text);
                    print(DateOfBirthController.text);
                    print(AddressController.text);
                    Navigator.pushNamed(context, MedicalInformationScreen.screenRoute);
                  },
                  child:Text(
                    'Next',
                    style: TextStyle(
                      color:Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );



  }
}
