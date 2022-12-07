import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpleapp/Screens/whatsAppHomePage.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage(
    this.nameList,
    this.people,
  );
  String nameList;
  People people;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Hero(
      tag: widget.nameList,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: Image.network(
            "https://cdn3.iconfinder.com/data/icons/picons-social/57/56-apple-512.png"),
      ),
    ));
  }
}
