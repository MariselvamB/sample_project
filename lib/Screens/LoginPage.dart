// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simpleapp/utils/app_colors.dart';

import 'ScrollViewPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

bool _secureText = true;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 150),
        child: Form(
          key: _formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                (TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length > 10) {
                      return 'Please enter User Name';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    counterText: '',
                    hintText: "User Name",
                    hintStyle: TextStyle(color: Colors.green),
                    labelText: "Enter user Name",
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.deepPurple,
                    ),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@') ||
                          !value.contains('.')) {
                        return 'Please Enter Email Address';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        hintText: "Email ",
                        labelText: "Enter Email ",
                        labelStyle: TextStyle(
                            decorationColor:
                                Color.fromARGB(255, 172, 211, 16))),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 8 ||
                            value.length > 16) {
                          return 'Please Enter Pasword';
                        }
                        return null;
                      },
                      obscuringCharacter: "*",
                      obscureText: _secureText,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(_secureText
                              ? Icons.security
                              : Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        counterText: '',
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Colors.green),
                        labelText: "Enter Password",
                        labelStyle: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple,
                        ),
                      ),
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      maxLength: 16,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ]),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ScrollViewPage(),
                              ));
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 10, right: 10),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ))
              ]),
        ),
      ),
    );
  }
}
