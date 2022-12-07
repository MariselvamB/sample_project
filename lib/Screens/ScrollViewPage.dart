// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import 'package:simpleapp/Screens/ProductListPage.dart';
import 'package:simpleapp/utils/app_images.dart';

import 'TapListViewPage.dart';

import 'TextFormFieldPage.dart';

class ScrollViewPage extends StatefulWidget {
  const ScrollViewPage({super.key});

  @override
  State<ScrollViewPage> createState() => _ScrollViewPageState();
}

class _ScrollViewPageState extends State<ScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                body: TabBarView(children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.indigo),
                          child: Image.asset(
                            AppImages.dp,
                            height: 150,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.indigo),
                          height: 150,
                          width: 150,
                          child: Image.network(
                              "https://yt3.ggpht.com/ytc/AMLnZu9GlNEvcXPblRUvW11GS3buDikRNugBjnPlZ_1rew=s900-c-k-c0x00ffffff-no-rj"),
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.indigo),
                          height: 150,
                          width: 150,
                          child: Image.network(
                              "https://yt3.ggpht.com/ytc/AMLnZu9GlNEvcXPblRUvW11GS3buDikRNugBjnPlZ_1rew=s900-c-k-c0x00ffffff-no-rj"),
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.indigo),
                          height: 150,
                          width: 150,
                          child: Image.network(
                              "https://yt3.ggpht.com/ytc/AMLnZu9GlNEvcXPblRUvW11GS3buDikRNugBjnPlZ_1rew=s900-c-k-c0x00ffffff-no-rj"),
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.indigo),
                          height: 150,
                          width: 150,
                          child: Image.network(
                              "https://yt3.ggpht.com/ytc/AMLnZu9GlNEvcXPblRUvW11GS3buDikRNugBjnPlZ_1rew=s900-c-k-c0x00ffffff-no-rj"),
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.indigo),
                          height: 150,
                          width: 150,
                          child: Image.network(
                              "https://yt3.ggpht.com/ytc/AMLnZu9GlNEvcXPblRUvW11GS3buDikRNugBjnPlZ_1rew=s900-c-k-c0x00ffffff-no-rj"),
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.indigo),
                          height: 150,
                          width: 150,
                          child: Image.network(
                              "https://yt3.ggpht.com/ytc/AMLnZu9GlNEvcXPblRUvW11GS3buDikRNugBjnPlZ_1rew=s900-c-k-c0x00ffffff-no-rj"),
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.indigo),
                          height: 150,
                          width: 150,
                          child: Image.network(
                              "https://yt3.ggpht.com/ytc/AMLnZu9GlNEvcXPblRUvW11GS3buDikRNugBjnPlZ_1rew=s900-c-k-c0x00ffffff-no-rj"),
                        ),
                      ],
                    ),
                  ),
                  TaplistViewPage(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(color: Colors.white),
                          height: 200,
                          width: 300,
                          child: Image.network(
                            "https://rukminim1.flixcart.com/image/416/416/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70",
                            height: 150,
                            width: 250,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 50, left: 60, right: 10),
                            child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero)),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.orange)),
                              onPressed: () {},
                              icon: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                  left: 20,
                                ),
                                child: Icon(
                                  Icons.shopping_cart,
                                  size: 18,
                                ),
                              ),
                              label: Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 15, right: 15),
                                child: Text(
                                  "ADD TO CART",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, right: 60),
                            child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero)),
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.deepOrange)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => TextFormFieldpage(),
                                    ));
                              },
                              icon: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                  left: 22,
                                ),
                                child: Icon(
                                  Icons.bolt,
                                  size: 20,
                                ),
                              ),
                              label: Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 15, right: 25),
                                child: Text(
                                  " BUY NOW",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          width: 100,
                          height: 100,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ]),
                bottomNavigationBar: Container(
                  color: Colors.black,
                  child: TabBar(tabs: const [
                    Tab(
                      icon: Icon(Icons.directions_car),
                    ),
                    Tab(
                      icon: Icon(Icons.directions_transit),
                    ),
                    Tab(
                      icon: Icon(Icons.directions_bike),
                    ),
                  ]),
                ),
                appBar: AppBar(
                  actions: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductListPage(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.settings),
                      ),
                    ),
                    Icon(Icons.notifications)
                  ],
                  title: Text("Tab view page"),
                ))));
  }
}
