import 'package:flutter/material.dart';

import 'SecondApp.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SignIn Document"),
        ),
        body: NewForm());
  }
}

class NewForm extends StatefulWidget {
  @override
  State<NewForm> createState() => _NewFormState();
}

class _NewFormState extends State<NewForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          Text("SignIn",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 35,
                color: Colors.greenAccent,
              )),
          Padding(
            padding: EdgeInsets.all(25),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "enter Email for Signin",
                border: UnderlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return " enter your email";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Enter Password for Signin",
                border: UnderlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your Password";
                }
                return null;
              },
            ),
          ),
          Center(
              child: ElevatedButton(
            child: Text("Press ok for SignIn"),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondApp()));
            },
          )),
        ],
      ),
    );
  }
}
