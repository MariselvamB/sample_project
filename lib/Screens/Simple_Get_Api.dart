import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpleapp/http/network_service.dart';
import 'package:simpleapp/model/age.dart';

class SimpleGetApiPage extends StatefulWidget {
  const SimpleGetApiPage({super.key});

  @override
  State<SimpleGetApiPage> createState() => _SimpleGetApiPageState();
}

class _SimpleGetApiPageState extends State<SimpleGetApiPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isseleted = true;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Age"), actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: const Icon(Icons.more_vert),
          )
        ]),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                      validator: (value) {},
                      controller: controller,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: const Icon(Icons.person),
                        ),
                        hintText: "Full Name",
                        label: const Text("Enter your Name"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            gapPadding: 12),
                      )),
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 20, top: 50),
              child: ElevatedButton(
                  onPressed: () async {
                    if (controller.text.isEmpty) {
                      print("textfield is empty");
                    } else {
                      Age ageData =
                          await NetworkService.ageData(controller.text);

                      showAgeDialog(context, ageData);
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 16.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      const Center(child: Icon(Icons.navigate_next))
                    ],
                  )),
            )
          ],
        ));
  }

  Future<dynamic> showAgeDialog(BuildContext context, Age ageData) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            title: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text("Age : "),
                        Text((ageData.age).toString()),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: isseleted,
                      child: Row(
                        children: [
                          const Text("Count No : "),
                          Text((ageData.count).toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isseleted;
                    });
                  },
                  child: const Text("Count No")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel")),
            ],
          );
        });
      },
    );
  }
}
