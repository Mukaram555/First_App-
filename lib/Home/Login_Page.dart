

import 'package:flutter/material.dart';
import 'package:untitled/Utilities/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    bool ButtonPressed=false;
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'Assets/Images/Capture.PNG',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                'Welcome Dear $name',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      labelText: 'Name',
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 22.2,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        ButtonPressed=true;
                      });
                      await Future.delayed(Duration(seconds: 3));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: ButtonPressed? 50: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child:
                          ButtonPressed? Icon(Icons.done,
                          color: Colors.white,):
                      Text(
                        "LogIn",
                        style:
                            TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Raleway'),
                      ),
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text('Login'),
                  //   style: TextButton.styleFrom(
                  //       backgroundColor: Colors.black,
                  //       minimumSize: Size(150.0, 40.0)),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
