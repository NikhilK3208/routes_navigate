import 'package:flutter/material.dart';

class SecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Signup Document"),
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            Text("Signup",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                )),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter value';
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "First Name",
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter value';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Date of birth",
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter value';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Email",
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter value';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Create Password",
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter value';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Click "),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
