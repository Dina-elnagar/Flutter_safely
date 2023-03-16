import 'package:flutter/material.dart';
class PersonalInformationScreen  extends StatefulWidget
{
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
      backgroundColor: Color(0xFF3E3B3B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
            Icons.keyboard_backspace,
            color: Colors.orangeAccent),
        title: Text(
          'Personal Information',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
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
              Row(
                children: [
                  Text('Male'),
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
                    width: 150.0,
                  ),
                  Text('Female'),
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
                height: 40.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.orangeAccent,
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
