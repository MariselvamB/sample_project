// ignore_for_file: file_names, prefer_const_constructors, unnecessary_import, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({super.key});

  @override
  State<ListTilePage> createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  int seletedForRadio = 0;

  int sliderValue = 0;

  List<Sort> sortListRadio = [
    Sort("Relevance"),
    Sort("Popularity"),
    Sort("Price--Low to High"),
    Sort("Price--High to Low"),
    Sort("Newest First"),
  ];
  List<Catagry> catagryList = [
    Catagry(1, "Sort By", Icons.arrow_drop_down_outlined),
    Catagry(2, "filter", Icons.filter_list),
    Catagry(3, "Compare", Icons.compare_arrows_rounded),
    Catagry(4, "Brand", Icons.arrow_drop_down_outlined),
    Catagry(5, "Price", Icons.arrow_drop_down_outlined),
    Catagry(6, "processor Brand", Icons.arrow_drop_down_outlined),
  ];
  List<Features> featuresList = [
    Features(Icons.signal_cellular_alt_sharp, "5G", "Mobiles"),
    Features(Icons.local_shipping_outlined, "1 Day", "Delivery"),
    Features(Icons.fiber_new_rounded, "New", "Launches"),
    Features(Icons.workspace_premium_outlined, "Premium", "Brands")
  ];

  // List<Rating> RatingIconslist = [
  //   Rating(
  //     Icons.star,
  //     Icons.star,
  //     Icons.star,
  //     Icons.star,
  //     Icons.star_half,
  //   )
  // ];
  List<ProductDescription> ProductDescriptionList = [
    ProductDescription(
        "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/b/u/f/-original-imaghxa5hvapbfds.jpeg?q=70",
        "APPLE iPhone 14 (Purple, 128 GB)",
        Icons.star,
        "(484)",
        "https://static-assets-web.flixcart.com/fk-p-linchpin-web/fk-cp-zion/img/fa_62673a.png",
        "₹77,900",
        "₹77,400",
        "3% off",
        "Free delivery",
        "Lowest Price in 15 days",
        "Upto ₹20,500 Off on Exchange",
        "15.49 cm (6.1 inch) Super Retina XDR Display",
        "12MP + 12MP Dual Rear Camera",
        "12MP Front Camera"),
    ProductDescription(
        "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/b/u/f/-original-imaghxa5hvapbfds.jpeg?q=70",
        "APPLE iPhone 14 (Purple, 128 GB)",
        Icons.star,
        "(484)",
        "https://static-assets-web.flixcart.com/fk-p-linchpin-web/fk-cp-zion/img/fa_62673a.png",
        "₹77,900",
        "₹77,400",
        "3% off",
        "Free delivery",
        "Lowest Price in 15 days",
        "Upto ₹20,500 Off on Exchange",
        "15.49 cm (6.1 inch) Super Retina XDR Display",
        "12MP + 12MP Dual Rear Camera",
        "12MP Front Camera")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          backgroundColor: const Color.fromARGB(255, 73, 70, 70),
          title: const Text(
            "Iphone 14",
            style: TextStyle(letterSpacing: 1),
          ),
          actions: const [
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Icon(Icons.mic),
            ),
            Icon(Icons.favorite_border),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(children: [
                  Container(
                    color: Colors.white,
                    height: 28,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: catagryList.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  onCategoryButtonTapped(catagryList[index]);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          catagryList[index].name,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 5),
                                        child: Icon(
                                          catagryList[index].icon,
                                          size: 16,
                                        ),
                                      )
                                    ]),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: featuresList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                      ),
                                      child: Icon(
                                        featuresList[index].icon,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 10, top: 5),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              featuresList[index].name,
                                              style: const TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              featuresList[index].subName,
                                              style:
                                                  const TextStyle(fontSize: 12),
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  ListView.builder(
                      itemCount: ProductDescriptionList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 10),
                          child: Container(
                            height: double.infinity,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 10, right: 10),
                                      child: Image.network(
                                        ProductDescriptionList[index]
                                            .productUrl,
                                        width: 85,
                                        height: 105,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                                ProductDescriptionList[index]
                                                    .productName,
                                                style: TextStyle(fontSize: 16)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 100,
                                                  color: Color.fromARGB(
                                                      255, 228, 38, 13),
                                                  child: Icon(
                                                    ProductDescriptionList[
                                                            index]
                                                        .icon,
                                                    color: Colors.green,
                                                    size: 20,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5, right: 5),
                                                  child: Text(
                                                    ProductDescriptionList[
                                                            index]
                                                        .ratingcount,
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 13),
                                                  ),
                                                ),
                                                Image.network(
                                                  ProductDescriptionList[index]
                                                      .assuredUrl,
                                                  scale: 7,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 10),
                                                child: Text(
                                                  ProductDescriptionList[index]
                                                      .originalPrice,
                                                  style: TextStyle(
                                                    fontStyle: FontStyle.normal,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                              Text(ProductDescriptionList[index]
                                                  .offerPrice),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: Text(
                                                    ProductDescriptionList[
                                                            index]
                                                        .offer,
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 26, 165, 31))),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    ProductDescriptionList[
                                                            index]
                                                        .deliveryDetails,
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 15),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10, bottom: 10),
                                                    child: Text(
                                                      ProductDescriptionList[
                                                              index]
                                                          .latestUpdate,
                                                      style: TextStyle(
                                                          color: Colors.green,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 10),
                                                    child: Text(
                                                      ProductDescriptionList[
                                                              index]
                                                          .exchangeDetails,
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 5, right: 5),
                                        child: Text(
                                          ProductDescriptionList[index]
                                              .displayDetails,
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 5, top: 5, right: 5),
                                          child: Text(
                                            ProductDescriptionList[index]
                                                .rearCamaraDetails,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 5, top: 5, right: 5),
                                          child: Text(
                                            ProductDescriptionList[index]
                                                .frontCamara,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  color: Colors.grey,
                                  height: 1,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ]))));
  }

  Future<void> showSortByBottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return SizedBox(
              height: 325,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                        child: Text(
                          "SORT BY",
                          style: TextStyle(letterSpacing: 1),
                        ),
                      ),
                    ),
                    RadioListTile(
                      groupValue: 1,
                      value: seletedForRadio,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          seletedForRadio = 1;
                        });
                      },
                      title: const Text(
                        "Relevance",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    RadioListTile(
                      groupValue: 2,
                      value: seletedForRadio,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          seletedForRadio = 2;
                        });
                      },
                      title: const Text(
                        "Popularity",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    RadioListTile(
                      groupValue: 3,
                      value: seletedForRadio,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          seletedForRadio = 3;
                        });
                      },
                      title: const Text(
                        "Price--Low to High",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    RadioListTile(
                      groupValue: 4,
                      value: seletedForRadio,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          seletedForRadio = 4;
                        });
                      },
                      title: const Text(
                        "Price--High to Low",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    RadioListTile(
                      groupValue: 5,
                      value: seletedForRadio,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          seletedForRadio = 5;
                        });
                      },
                      title: const Text(
                        "Newest First",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        });
  }

  void showFilterDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            title: Column(
              children: [
                const Text("Are you sure to logout this app?"),
                Slider.adaptive(
                  value: sliderValue.toDouble(),
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value.toInt();
                    });
                  },
                ),
                Switch(
                  value: true,
                  onChanged: (value) {
                    setState(() {});
                  },
                )
              ],
            ),
            actions: [
              ElevatedButton(onPressed: () {}, child: const Text("Logout")),
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

  void onCategoryButtonTapped(Catagry category) {
    switch (category.id) {
      case 1:
        showSortByBottomSheet(context);
        break;

      case 2:
        showFilterDialog();
        break;
      default:
    }
  }
}

class Sort {
  String name;

  Sort(this.name);
}

class Catagry {
  int id;

  String name;
  IconData icon;

  Catagry(this.id, this.name, this.icon);
}

class Features {
  IconData icon;
  String name;
  String subName;

  Features(this.icon, this.name, this.subName);
}

class Rating {
  IconData icon1;
  IconData icon2;
  IconData icon3;
  IconData icon4;
  IconData icon5;

  Rating(
    this.icon1,
    this.icon2,
    this.icon3,
    this.icon4,
    this.icon5,
  );
}

// class  {
//   IconData icon1;
//   IconData icon2;
//   IconData icon3;
//   IconData icon4;
//   IconData icon5;
//   int ratingcount;
//   String assuredUrl;

//   Rating(this.icon1, this.icon2, this.icon3, this.icon4, this.icon5,
//       this.ratingcount, this.assuredUrl);
// }

class ProductDescription {
  String productUrl;
  String productName;
  IconData icon;
  String ratingcount;
  String assuredUrl;
  String originalPrice;
  String offerPrice;
  String offer;

  String deliveryDetails;
  String latestUpdate;
  String exchangeDetails;
  String displayDetails;
  String rearCamaraDetails;
  String frontCamara;

  ProductDescription(
    this.productUrl,
    this.productName,
    this.icon,
    this.ratingcount,
    this.assuredUrl,
    this.originalPrice,
    this.offerPrice,
    this.offer,
    this.deliveryDetails,
    this.latestUpdate,
    this.exchangeDetails,
    this.displayDetails,
    this.rearCamaraDetails,
    this.frontCamara,
  );
}
