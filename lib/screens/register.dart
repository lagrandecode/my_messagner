import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_messanger/screens/login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late String firstName;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                margin: EdgeInsets.only(left: 15.0),
                height: 30,
                width: 30,
                child: SvgPicture.asset("assets/images/cancel.svg"),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Create Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            _buildTextIdentifier("First Name"),
            _buildTextFieldInput(context, "First Name", TextField(

            ),),

          ],
        ),
      ),
    );
  }

  _buildTextIdentifier(String text) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }

  _buildTextFieldInput(BuildContext context, String hint, TextField textField) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(1),
          bottomRight: Radius.circular(10),
        ),
        color: Colors.grey.withOpacity(0.4),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
    );
  }
}
