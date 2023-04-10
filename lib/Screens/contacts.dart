import 'package:flutter/material.dart';
import 'package:udemy_flutter/Screens/homescreen.dart';

class contactscreen extends StatefulWidget {
  const contactscreen({Key? key}) : super(key: key);
  static const String screenRoute = 'contactscreen';

  @override
  State<contactscreen> createState() => _contactscreen();
}

class _contactscreen extends State<contactscreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController familymemberController = TextEditingController();
  List<Contact> contacts = List.empty(growable: true);

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2c363b),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2c363b),
        centerTitle: true,
        title: const Text('Contacts'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFFffae46),
          ), onPressed: () {
          Navigator.pushNamed(context, HomeScreen.screenRoute);
        },
        ),
      ),


      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  hintText: 'Contact Name',
                  hintStyle: TextStyle(
                      color: Colors.white
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ))),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: contactController,
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: const InputDecoration(
                  hintText: 'Contact Number',
                  hintStyle: TextStyle(
                      color: Colors.white
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ))),
            ),
            TextField(
              controller: familymemberController,
              decoration: const InputDecoration(
                  hintText: 'Family member',
                  hintStyle: TextStyle(
                      color: Colors.white
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ))),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      //
                      String name = nameController.text.trim();
                      String contact = contactController.text.trim();
                      String familymember = familymemberController.text.trim();
                      if (name.isNotEmpty && contact.isNotEmpty) {
                        setState(() {
                          nameController.text = '';
                          contactController.text = '';
                          familymemberController.text = '';
                          contacts.add(Contact(name: name, contact: contact, familymember: familymember));
                        });
                      }
                      //
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFffae46),),
                    child: const Text('Save')),
                ElevatedButton(
                    onPressed: () {
                      //
                      String name = nameController.text.trim();
                      String contact = contactController.text.trim();
                      String familymember = familymemberController.text.trim();
                      if (name.isNotEmpty && contact.isNotEmpty && familymember.isNotEmpty) {
                        setState(() {
                          nameController.text = '';
                          contactController.text = '';
                          familymemberController.text = '';
                          contacts[selectedIndex].name = name;
                          contacts[selectedIndex].contact = contact;
                          contacts[selectedIndex].familymember = familymember;
                          selectedIndex = -1;
                        });
                      }
                      //
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFffae46),),
                    child: const Text('Update')),
              ],
            ),
            const SizedBox(height: 10),
            contacts.isEmpty
                ? const Text(
              'No contacts yet',
              style: TextStyle(color: Colors.white,
                  fontSize: 22),
            )
                : Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) => getRow(index),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:
          index % 2 == 0 ? Colors.deepPurpleAccent : Colors.purple,
          foregroundColor: Colors.white,
          child: Text(
            contacts[index].name[0],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contacts[index].name,
              style:
              const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(contacts[index].contact),
            Text(contacts[index].familymember),
          ],
        ),

        trailing: SizedBox(
          width: 70,
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    //
                    nameController.text = contacts[index].name;
                    contactController.text = contacts[index].contact;
                    familymemberController.text = contacts[index].familymember;
                    setState(() {
                      selectedIndex = index;
                    });
                    //
                  },
                  child: const Icon(Icons.edit)),
              InkWell(
                  onTap: (() {
                    //
                    setState(() {
                      contacts.removeAt(index);
                    });
                    //
                  }),
                  child: const Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}
class Contact {
  String name;
  String contact;
  String familymember;
  Contact({required this.name, required this.contact, required this.familymember});
}

