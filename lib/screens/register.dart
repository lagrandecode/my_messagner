import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_messanger/screens/login_register_link.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late String firstName;
  late String email;
  late String password;
  bool _isPasswordVisible = false;


  @override
  void initState() {
    // TODO: implement initState
    _isPasswordVisible = false;
    super.initState();
  }


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

            // xthis is the textfield for the first name of the user
            _buildTextIdentifier("First Name"),
            _buildTextFieldInput(context, TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                hintText: "First Name",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey
                ),
              ),
            ),),


            // this is the other names of the users
            SizedBox(height: 20,),


            _buildTextIdentifier("Last Name"),
            _buildTextFieldInput(context, TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                hintText: "Last Name",
                hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey
                ),
              ),
            ),),


            // this is the Email address of the users
            SizedBox(height: 20,),


            _buildTextIdentifier("Email Address"),
            _buildTextFieldInput(context, TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                hintText: "Email Address",
                hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),),

            // this is the phone number of the users
            SizedBox(height: 20,),


            _buildTextIdentifier("Phone Number"),
            _buildTextFieldInput(context, TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                hintText: "Phone Number",
                hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey
                ),
              ),
              keyboardType: TextInputType.number,
            ),),

            // this will collect the other number of the users
            SizedBox(height: 20,),

            _buildTextIdentifier("Other Phone Number"),
            _buildTextFieldInput(context, TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                hintText: "Optional",
                hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey
                ),
              ),
              keyboardType: TextInputType.number,
            ),),

            // this will collect the password of the users
            SizedBox(height: 20,),

            _buildTextIdentifier("Password"),
            _buildTextFieldInput(context, TextFormField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      _isPasswordVisible =! _isPasswordVisible;
                    });
                  },
                  icon: (_isPasswordVisible ? Icon(Icons.visibility, color: Colors.redAccent,) : Icon(Icons.visibility_off, color: Colors.grey,)),


                ),
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                hintText: "Password",
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey
                ),
              ),
            ),),

            SizedBox(height: 50,),

            // This is the register button
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 10),
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(2),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => LoginRegisterLink(),
                  ));
                },
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 50,),

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

  _buildTextFieldInput(BuildContext context, TextFormField textFormField) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
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
      child: textFormField,
    );
  }
}
