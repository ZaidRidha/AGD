import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900, // Dark blue color
      appBar: AppBar(
        title: Text('أتصل بنا'),
        backgroundColor: Colors.blue.shade900, // Dark blue color,
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: _nameController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'الاسم بالكامل*',
                    labelStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white, // Background color
                    filled: true,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: _emailController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'البريد الألكتروني*',
                    labelStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white, // Background color
                    filled: true,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: _phoneController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'رقم الهاتف',
                    labelStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white, // Background color
                    filled: true,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: _subjectController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'موضوع الرسالة',
                    labelStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white, // Background color
                    filled: true,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0), // Add margin bottom
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextFormField(
                  controller: _messageController,
                  style: TextStyle(color: Colors.black),
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0, // Increase the border width
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0, // Increase the border width
                      ),
                    ),
                    labelText: 'نص الرسالة*',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                  height:
                      10), // Add some space between the fields and the button
              Container(
                height: 50,
                margin: EdgeInsets.all(10),
                color: Colors.blue.shade900,
                child: ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    // Handle form submission
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
