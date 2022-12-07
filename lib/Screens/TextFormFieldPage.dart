// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class TextFormFieldpage extends StatefulWidget {
  const TextFormFieldpage({super.key});

  @override
  State<TextFormFieldpage> createState() => _TextFormFieldpageState();
}

class _TextFormFieldpageState extends State<TextFormFieldpage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 12, 150),
        title: Text(
          "LOGIN OR SIGNUP",
          style: TextStyle(fontSize: 15, letterSpacing: .5),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 50, right: 50, top: 30, bottom: 20),
              child: TextFormField(
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(value) &&
                            !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                                .hasMatch(value)) {
                      return 'Please Enter Email Address / Mobile Number';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter Email/Mobile Number",
                      hintStyle: TextStyle(fontSize: 18))),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Text(
                  "By continuing you agree to Flipkart's Terms of Use and Privacy Policy.",
                  style: TextStyle(
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                color: Colors.yellow,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)))),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.deepOrange)),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    child: Text(
                      "CONTINUE",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: Text(
                  " Advantages of our secure login",
                  style:
                      TextStyle(color: Colors.grey, height: 1.5, fontSize: 16),
                ),
              ),
            ),
            Text.rich(
              TextSpan(
                children: const [
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10, left: 35),
                      child: Icon(
                        Icons.local_shipping,
                        size: 18,
                      ),
                    ),
                  ),
                  TextSpan(
                      text: "Easily Track Orders, Hassle free Returns",
                      style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                children: const [
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10, top: 20),
                      child: Padding(
                        padding: EdgeInsets.only(left: 48),
                        child: Icon(
                          Icons.notifications,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  TextSpan(
                      text: " Get Relevant Alerts and Recommendation",
                      style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                children: const [
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10, top: 20),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.star,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  TextSpan(
                      text: "Wishlist, Reviews, Ratings and more.",
                      style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
