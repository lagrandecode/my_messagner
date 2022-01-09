import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_messanger/homepage.dart';
import 'package:my_messanger/screens/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


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
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),



            _buildTextIdentifier("Email Address"),
            _buildTextFieldInput(context, TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Theme.of(context).primaryColor),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(1),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.redAccent),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(1),
                    bottomRight: Radius.circular(10),
                  ),

                ),
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

            // this will collect the password of the users
            SizedBox(height: 20,),

            _buildTextIdentifier("Your Password"),
            _buildTextFieldInput(context, TextFormField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Theme.of(context).primaryColor),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(1),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.redAccent),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(1),
                    bottomRight: Radius.circular(10),
                  ),
                ),
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

            const SizedBox(height: 50,),

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
                    builder: (_) => Homepage(),
                  ));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 30,),

            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Register(),),);
              },
                child: Center(child: Text("Don't have an account? Register", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),),)),

            SizedBox(height: 30,),

            Center(child: Text("Forgot Password?", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),),


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
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(1),
          bottomRight: Radius.circular(10),
        ),
        color: Color(0xffeff0f5),

      ),
      child: textFormField,
    );
  }
}
