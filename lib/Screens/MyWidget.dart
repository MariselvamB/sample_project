import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(children: [
              Container(
                alignment: Alignment.center,
                height: 100,
                width: 300,
                margin: EdgeInsets.all(10),
                padding:
                    EdgeInsets.only(top: 20, bottom: 30, left: 10, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 10,
                      color: Colors.orange,
                    )),
                transform: Matrix4.rotationZ(0.1),
                child: Text("Mariselvam",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20.0,
                      letterSpacing: 3.0,
                    )),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 40, right: 40),
              child: TextField(
                controller: firstNameController,
                decoration: InputDecoration(
                  hintText: "First Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
              child: TextField(
                controller: lastNameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
              child: TextField(
                controller: emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                readOnly: true,
                enabled: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: TextButton(
                  onPressed: () {
// on tap function

                    print(emailController.text);
                  },
                  child: Text(
                    "forgot password?",
                    style: TextStyle(fontSize: 24),
                  )),
            )
          ]),
    ));
  }
}
