// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:simpleapp/Screens/BookingRoom.dart';
import 'package:simpleapp/Screens/FoodRecipe.dart';
import 'package:simpleapp/Screens/LoginPage.dart';
import 'package:simpleapp/Screens/RoseRoomPage.dart';
import 'package:simpleapp/Screens/SimplePostImageupload.dart';
import 'package:simpleapp/Screens/Simple_Get_Api.dart';
import 'package:simpleapp/Screens/Tap_With_API.dart';
import 'package:simpleapp/Screens/googleTranslate.dart';
import 'Screens/ListTilePage.dart';
import 'Screens/ProductDescribtionPage.dart';
import 'Screens/ProductListPage.dart';
import 'Screens/ScrollViewPage.dart';
import 'Screens/TapListViewPage.dart';

const Color bodyBackground = Colors.white;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: bodyBackground,
      ),
      debugShowCheckedModeBanner: false,
      home:
          // MyHomePage()
          // RoseRoomPage()

          // SimplePostImagePage()
          // GoogleTranslatePage()
          // FoodRecipePage()
          // SimpleGetApiPage()
          // TapWithApiPage()
          // WhatsAppHomePage(),
          // AnimationPage()
          // ProductDescribtionPage()
          // TaplistViewPage()
          // filterPage(),
          // ProductDescribtionPage()
          // ProductListPage(),
          // RegistrationPage(),
          // LoginPage(),
          ScrollViewPage(),
      // buyNowPage(),
      // GridViewPage(),
      // TextFormFieldpage(),
      // HorizontalScrolPage(),
      // VerticalScrolPage(),
      // ListTilePage(),
    );
  }

  buyNowPage() {}
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool _secureText = true;

  bool emailError = false;

  bool panvalid = true;
  bool firstNameValid = false;
  bool lastNameVaild = false;
  bool passwordVaild = false;

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  final TextEditingController _emailIdController = TextEditingController();

  final TextEditingController _pancardcardController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
            child: TextField(
              controller: firstNameController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
                counterText: '',
                hintText: "First Name",
                hintStyle: const TextStyle(color: Colors.brown),
                labelText: "Enter First Name",
                labelStyle: const TextStyle(
                  color: Color.fromARGB(255, 207, 22, 170),
                ),
                errorText: firstNameValid ? null : "Enter valid  First Name",
              ),
              keyboardType: TextInputType.name,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              maxLength: 10,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
            child: TextField(
              controller: lastNameController,
              decoration: InputDecoration(
                  errorText: lastNameVaild ? null : "Enter valid Last Number",
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  counterText: '',
                  hintText: "Last Name",
                  labelText: "Enter Last Name"),
              keyboardType: TextInputType.text,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              maxLength: 10,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
            child: TextField(
              controller: _pancardcardController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  errorText: panvalid ? null : "Enter valid  Pancard Number",
                  counterText: '',
                  hintText: "pancardNumber",
                  labelText: "Enter Pancard Number",
                  labelStyle: const TextStyle(color: Colors.white)),
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              keyboardType: TextInputType.text,
              inputFormatters: const <TextInputFormatter>[],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
            child: TextField(
              controller: _emailIdController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    gapPadding: 20.0,
                  ),
                  errorText: !emailError ? "Enter valid email Address" : null,
                  hintText: "Email ID",
                  labelText: "Enter Email ID",
                  labelStyle: const TextStyle(
                      decorationColor: Color.fromARGB(255, 172, 211, 16))),
              keyboardType: TextInputType.emailAddress,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.singleLineFormatter
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 40, right: 40),
            child: TextField(
              obscuringCharacter: '*',
              obscureText: _secureText,
              controller: _passwordController,
              decoration: InputDecoration(
                  errorText: passwordVaild ? null : "Enter valid  Password",
                  counterText: '',
                  hintText: "Password",
                  labelText: "Enter Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                        _secureText ? Icons.security : Icons.remove_red_eye),
                    onPressed: () {
                      setState(() {
                        _secureText = !_secureText;
                      });
                    },
                  )),
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              maxLength: 16,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "forgot Your password?",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  emailError = validateEmail(_emailIdController.text);
                  panvalid = validatePancardNumber(_pancardcardController.text);
                  firstNameValid = validateFirstName(firstNameController.text);
                  lastNameVaild = validateLastName(lastNameController.text);
                  passwordVaild = validatePassword(_passwordController.text);
                });
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ElevatedButton(
              onPressed: () {
                //navigation command

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 73, 32, 184)),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                child: Text(
                  "Go to Next Page",
                  style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ]));
  }

  bool validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  bool validatePancardNumber(String? value) {
    String pattern = "[A-Z]{5}[0-9]{4}[A-Z]{1}";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  bool validatePassword(String value) {
    if (value.length > 7 && value.length < 15) {
      return true;
    } else {
      return false;
    }
  }

  bool validateFirstName(String value) {
    if (value.isNotEmpty && value.length < 11) {
      return true;
    } else {
      return false;
    }
  }

  bool validateLastName(String value) {
    if (value.isNotEmpty && value.length < 11) {
      return true;
    } else {
      return false;
    }
  }
}
