import 'package:flutter/material.dart';
import 'package:untitled/Screen/user_list_page.dart';
import 'package:untitled/my_db/mydatabase.dart';

class InsertUserPage extends StatelessWidget {
   InsertUserPage({super.key,String? userName, String? city,});

  GlobalKey<FormState> _formKey = GlobalKey();
   Mydatabase db = Mydatabase();
  TextEditingController nameController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Insert User',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return UserListPage();
            }));
          }, icon: Icon(Icons.keyboard_arrow_left,color: Colors.grey,))
        ],
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Valid Name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter User Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: cityController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Valid City';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'City',
                  hintText: 'Enter City Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    int primaeyKey = await db.insertUserInTBLUser(
                      name: nameController.text.toString(),
                      city: cityController.text.toString(),
                    );
                    print('::::PRIMARY KEY ::: $primaeyKey');
                  }
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
