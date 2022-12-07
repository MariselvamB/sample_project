import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import 'ProfilePage.dart';

class WhatsAppHomePage extends StatefulWidget {
  const WhatsAppHomePage({super.key});

  @override
  State<WhatsAppHomePage> createState() => _WhatsAppHomePageState();
}

class _WhatsAppHomePageState extends State<WhatsAppHomePage> {
  DateTime Now = DateTime.now();
  String formattedDate = DateFormat().add_jm().format(DateTime.now());
  List<People> peoplelist = [
    People(
        dp: "https://cdn3.iconfinder.com/data/icons/picons-social/57/56-apple-512.png",
        lastChat: "augv",
        nameList: "Mariselvam B"),
    People(
        dp: "https://media.istockphoto.com/id/639812110/photo/fresh-red-apple-isolated-on-white-with-clipping-path.jpg?s=170667a&w=0&k=20&c=toqjzawT0hkpc0yLHWC0MJWulQW75dhMUQOEtWUXRiU=",
        nameList: "Mariganesh Anna",
        lastChat: "sawe"),
    People(
        dp: "https://cdn3.iconfinder.com/data/icons/picons-social/57/56-apple-512.png",
        nameList: "Solairaj",
        lastChat: "sv"),
    People(
        dp: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvKRh66zQCkQCLYvTVpvfFxwSTKkIRd02ucQ&usqp=CAU",
        nameList: "apppa",
        lastChat: "sv")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(154, 8, 82, 0),
          title: const Text("WhatsApp "),
          actions: const [
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Icon(Icons.more_vert),
            )
          ]),
      body: ListView.builder(
          itemCount: peoplelist.length,
          itemBuilder: (context, index) {
            return Container(
              height: 60,
              alignment: Alignment.center,
              child: ListTile(
                leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage(
                                  peoplelist[index].nameList,
                                  peoplelist[index])));
                    });
                  },
                  child: heroMethod(peoplelist[index].nameList, index),
                ),
                title: Text(peoplelist[index].nameList),
                subtitle: Text(
                  peoplelist[index].lastChat,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      overflow: TextOverflow.ellipsis),
                ),
                trailing: Text(formattedDate),
              ),
            );
          }),
    );
  }

  Hero heroMethod(String name, int index) {
    return Hero(
        tag: name,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.network(peoplelist[index].dp),
        ));
  }
}

class People {
  String dp;
  String nameList;
  String lastChat;

  People({required this.dp, required this.nameList, required this.lastChat});
}
