import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpleapp/http/network_service.dart';
import 'package:simpleapp/model/cat.dart';
import 'package:simpleapp/model/puplic/entry.dart';
import 'package:simpleapp/model/puplic/puplic.dart';
import 'package:simpleapp/model/user.dart';
import 'package:simpleapp/utils/app_colors.dart';

class TapWithApiPage extends StatefulWidget {
  const TapWithApiPage({super.key});

  @override
  State<TapWithApiPage> createState() => _TapWithApiPageState();
}

class _TapWithApiPageState extends State<TapWithApiPage> {
  late Future<Puplic> PuplicDetails;
  late Future<User> FormData;
  late Future<Cat> catdfact;

  @override
  void initState() {
    FormData = NetworkService.fetchData();
    catdfact = NetworkService.catData();
    PuplicDetails = NetworkService.getPuplic();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
              title: Text("API"),
              actions: [Icon(Icons.search)],
              bottom: TabBar(tabs: [
                Tab(
                  child: Text("Get"),
                  icon: Icon(Icons.get_app),
                ),
                Tab(
                  child: Text("Post"),
                  icon: Icon(Icons.post_add),
                ),
                Tab(
                  child: Text("Delete"),
                  icon: Icon(Icons.delete),
                ),
                Tab(
                  child: Text("Put"),
                  icon: Icon(Icons.update),
                ),
                Tab(
                  child: Text("Patch"),
                  icon: Icon(Icons.add),
                ),
              ])),
          body: TabBarView(children: [
            GetTapMethod(),
            PostTapMethod(),
            deleteMethod(),
            Container(
              color: Colors.grey,
            ),
            Container(
              color: Color.fromARGB(255, 190, 11, 11),
            )
          ]),
        ));
  }

  FutureBuilder<Cat> PostTapMethod() {
    return FutureBuilder<Cat>(
        future: catdfact,
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return Column(
              children: [
                Container(
                    color: Colors.grey,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Image.network(
                          "https://images2.minutemediacdn.com/image/upload/c_fill,w_1440,ar_16:9,f_auto,q_auto,g_auto/shape/cover/sport/578211-gettyimages-542930526-aef7b0e9536cbdb1633029d5801c0649.jpg"),
                    )),
                Expanded(
                    child: Container(
                        color: Color.fromARGB(255, 93, 92, 92),
                        child: Column(children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Divider(
                                  height: .1,
                                ),
                                ListTile(
                                  title: Row(
                                    children: [
                                      Text(
                                        "fact : ",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Expanded(
                                        child: Center(
                                            child: Text(
                                                Snapshot.data!.fact.toString(),
                                                style:
                                                    TextStyle(fontSize: 15))),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: .1,
                                ),
                                ListTile(
                                  title: Row(
                                    children: [
                                      Text(
                                        "length : ",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Center(
                                          child: Text(
                                              Snapshot.data!.length.toString(),
                                              style: TextStyle(fontSize: 15))),
                                    ],
                                  ),
                                ),
                              ]),
                        ])))
              ],
            );
          } else if (Snapshot.hasError) {
            return Text("${Snapshot.hasError}");
          }
          return Center(
              child: CircularProgressIndicator(
            color: Colors.orange,
          ));
        });
  }

  FutureBuilder<User> GetTapMethod() {
    return FutureBuilder<User>(
        future: FormData,
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Divider(
                      height: .1,
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "userId : ",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(Snapshot.data!.userId.toString(),
                              style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ),
                    Divider(
                      height: .1,
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            " Id : ",
                            style: TextStyle(fontSize: 18),
                          ),
                          Center(
                              child: Text(Snapshot.data!.id.toString(),
                                  style: TextStyle(fontSize: 15))),
                        ],
                      ),
                    ),
                    Divider(
                      height: .1,
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "TiTle : ",
                            style: TextStyle(fontSize: 18),
                          ),
                          Center(
                              child: Text(Snapshot.data!.title ?? '',
                                  style: TextStyle(fontSize: 15))),
                        ],
                      ),
                    ),
                    Divider(
                      height: .1,
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "body : ",
                            style: TextStyle(fontSize: 18),
                          ),
                          Center(
                              child: Text(Snapshot.data!.body ?? "",
                                  style: TextStyle(fontSize: 15))),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          } else if (Snapshot.hasError) {
            return Text("${Snapshot.hasError}");
          }
          return Center(
              child: CircularProgressIndicator(
            color: Colors.orange,
          ));
        });
  }

  SingleChildScrollView deleteMethod() {
    return SingleChildScrollView(
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Container(
                child: Image.network(
                    "https://i0.wp.com/www.southafricanlabourbulletin.org.za/wp-content/uploads/2021/03/salb-fist.png?fit=512%2C512&ssl=1")),
            FutureBuilder<Puplic>(
                future: PuplicDetails,
                builder: (context, Snapshot) {
                  if (Snapshot.hasData) {
                    return ListView.builder(
                        itemCount: 10,
                        // itemCount: Snapshot.data!.entries?.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          Entry entry = Snapshot.data!.entries![index];

                          return Container(
                            color: Colors.red,
                            child: Column(
                              children: [
                                Card(
                                  elevation: 2,
                                  child: ListTile(
                                    leading: Text("count : "),
                                    title: Text(
                                        (Snapshot.data?.count ?? 0).toString()),
                                  ),
                                ),
                                Container(
                                  color: AppColors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 10, bottom: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ListTile(
                                          leading: Text("Entry :- "),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Column(
                                            children: [
                                              Card(
                                                elevation: 5,
                                                child: ListTile(
                                                  leading: Text("API : "),
                                                  title: Text(entry.api ?? ""),
                                                ),
                                              ),
                                              Card(
                                                elevation: 5,
                                                child: ListTile(
                                                  leading:
                                                      Text("description : "),
                                                  title: Text(
                                                      entry.description ?? ""),
                                                ),
                                              ),
                                              Card(
                                                elevation: 5,
                                                child: ListTile(
                                                  leading: Text("auth : "),
                                                  title: Text(entry.auth ?? ""),
                                                ),
                                              ),
                                              Card(
                                                elevation: 5,
                                                child: ListTile(
                                                    leading: Text("https : "),
                                                    title: Text(entry.https
                                                        .toString())),
                                              ),
                                              Card(
                                                elevation: 5,
                                                child: ListTile(
                                                  leading: Text("cors : "),
                                                  title: Text(entry.cors ?? ""),
                                                ),
                                              ),
                                              Card(
                                                elevation: 5,
                                                child: ListTile(
                                                  leading: Text("link : "),
                                                  title: Text(entry.link ?? ""),
                                                ),
                                              ),
                                              Card(
                                                elevation: 5,
                                                child: ListTile(
                                                  leading: Text("category : "),
                                                  title: Text(
                                                      entry.category ?? ""),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  } else if (Snapshot.hasError) {
                    return Text("${Snapshot.hasError}");
                  }
                  return Center(
                      child: CircularProgressIndicator(
                    color: Colors.orange,
                  ));
                })
          ],
        ),
      ),
    );
  }
}
