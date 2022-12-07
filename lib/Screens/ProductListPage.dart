// ignore_for_file: file_names, duplicate_ignore, non_constant_identifier_names, camel_case_types, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  List<Banners> bannerList = [
    Banners(
        "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/w/f/v/-original-imaggsuedrcz7ghn.jpeg?q=70",
        "google Pixel 7 and 7 pro",
        "To help is pixle",
        "From ₹51,499"),
    Banners(
        "https://rukminim1.flixcart.com/image/612/612/kl9rssw0/fairness/z/n/q/430-ultimate-vitamin-c-skin-care-kit-wow-skin-science-original-imagyfntfuxgfqmy.jpeg?q=70",
        "Big Brand, Bigger doscounts",
        " Face care, Skincare & more",
        " 40% - 70% off"),
    Banners(
        "https://m.media-amazon.com/images/I/71lU2Y8FhwS._SL1500_.jpg",
        "Headphones & Speakers",
        "Sony,Marshall,Apple & more",
        "up to & 60% off"),
    Banners(
        "https://cdn.pricebaba.com/prod/images/product/laptop/112227/infinix-inbook-x2-plus-xl25-intel-core-i3-11th-gen-8gb-256gb-ssd-windows-xxl-3717144.jpg",
        "INBook X2 Plus",
        "15.6 FHD | 14.9mm Slim",
        "From ₹35,990"),
    Banners(
        "https://rukminim1.flixcart.com/image/612/612/l4n2oi80/bed-mattress/v/t/q/normal-top-queen-8-60-78-ortho-pocket-spring-premium-pu-foam-original-imagfhxjf2fjwhvd.jpeg?q=70",
        "Mattresses",
        "No cast EMI | Eurability certified",
        "From ₹5,999"),
  ];

  List<category> categoryList = [
    category("coin", "supercoin"),
    category("coin", "Coupons"),
    category("coin", "Credit"),
    category("coin", "Live"),
    category("coin", "what's New?"),
    category("coin", "feeds"),
    category("coin", "camera"),
    category("coin", "Fire Drops"),
    category("coin", "Seller Hub "),
    category("coin", "Games"),
  ];
  List<Deals> DealsList = [
    Deals(
        "https://rukminim1.flixcart.com/image/612/612/xif0q/shoe/l/u/c/10-8050-black-red-waan-black-red-original-imag5psezyhhwwks-bb.jpeg?q=70",
        "Axis,Stechers...",
        "Min.50% off"),
    Deals(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQpOAJf4WAetZ_XNJmS1CAchmqcQgPZXF_uw&usqp=CAU",
        "Axis,Stechers...",
        "Min.50% off"),
    Deals(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJFmySduf2nX5MFq0im-Nm3LIR3925FgQjWQfs9FX5BsKw5maJHsgqIInWY4wSlaPGQLE&usqp=CAU",
        "Axis,Stechers...",
        "Min.50% off"),
    Deals(
        "https://rukminim1.flixcart.com/image/612/612/l3vxbbk0/cookware-set/5/h/t/5-5-piece-combo-set-kadhai-tawa-pan-fry-pan-5l-pressure-cooker-2-original-imagewqad6yqqwvu.jpeg?q=70",
        "Axis,Stechers...",
        "Min.50% off"),
    Deals(
        "https://rukminim1.flixcart.com/image/416/416/jog2nbk0/laptop-skin-decal/6/t/9/pvc-coated-laptop-skin-vinyl-stickers-for-15-6-inches-laptop-original-imafaw5qsb85mkkq.jpeg?q=70",
        "Axis,Stechers...",
        "Min.50% off"),
    Deals(
        "https://motorolain.vtexassets.com/arquivos/ids/156984/motorola-edge30-pro-pdp-render-Cosmos-3-we9qp5nm.png?v=637813082701800000",
        "Axis,Stechers...",
        "Min.50% off"),
  ];

  List<RecentlyViewed> RecentlyViewedList = [
    RecentlyViewed(
        "https://rukminim1.flixcart.com/image/832/832/xif0q/shoe/u/p/q/-original-imaggcawce84gycm.jpeg?q=70",
        "shoe"),
    RecentlyViewed(
        "https://rukminim1.flixcart.com/image/200/200/kmp7ngw0/monitor/j/z/h/s2721hn-27-py0df-dell-original-imagfjphuywuh2a7.jpeg?q=70",
        "Moniteors"),
    RecentlyViewed(
        "https://rukminim1.flixcart.com/image/200/200/hair-dryer/c/t/g/philips-hp8100-46-original-imaemymzuxrnzfjb.jpeg?q=70",
        "Best of hair dryers"),
    RecentlyViewed(
        "https://rukminim1.flixcart.com/image/200/200/l5jxt3k0/dslr-camera/m/n/a/-original-imagg7hsggshhwbz.jpeg?q=70",
        "Top MIrrorless camara"),
    RecentlyViewed(
        "https://rukminim1.flixcart.com/image/200/200/kx50gi80/projector/r/9/p/zeb-pixa-play-12-5-6-dobly-audio-led-projector-zebronics-original-imag9z3yujqmzqt4.jpeg?q=70",
        "projectors"),
    RecentlyViewed(
        "https://rukminim1.flixcart.com/image/200/200/l1pc3gw0/power-bank/e/u/y/-original-imagd7dzan7sakt2.jpeg?q=70",
        "Premium powerBanks"),
    RecentlyViewed(
        "https://rukminim1.flixcart.com/image/200/200/k59xci80/watch/t/p/9/premium-luxury-business-casual-trendy-water-resistant-original-imafnzmembfxdyhv.jpeg?q=70",
        "watches"),
    RecentlyViewed(
        "https://rukminim1.flixcart.com/flap/200/200/image/83ed05de14e2176d.jpg?q=70",
        "Top Trending Styles"),
    RecentlyViewed(
        "https://rukminim1.flixcart.com/image/416/416/kiqbma80-0/ball/y/q/5/400-22-country-colour-5-1-1360br-football-nivia-original-imafyg5vzbdn5gy3.jpeg?q=70",
        "Premium Footballs"),
    RecentlyViewed(
        "https://rukminim1.flixcart.com/image/416/416/kic17rk0-0/stroller-pram/2/q/j/cortina-cx-stroller-iron-for-newborn-babies-and-toddlers-0m-pram-original-imafy5z9n3hgagqt.jpeg?q=70",
        "Baby Gear"),
  ];

  List<String> productName = [];

  bool isChecked = false;

  int isRadioSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("flipkart"),
          actions: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  // context and builder are
                  // required properties in this widget
                  context: context,
                  builder: (BuildContext context) {
                    // we set up a container inside which
                    // we create center column and display text

                    // Returning SizedBox instead of a Container
                    return StatefulBuilder(builder: (context, setState) {
                      return SizedBox(
                        height: 500,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value ?? false;
                                    });
                                  },
                                ),
                                const Text('GeeksforGeeks'),
                              ]),
                              RadioListTile(
                                groupValue: 1,
                                value: isRadioSelected,
                                onChanged: (value) {
                                  setState(() {
                                    print(value);
                                    isRadioSelected = 1;
                                  });
                                },
                                title: const Text('GeeksforGeeks'),
                              ),
                              RadioListTile(
                                groupValue: 2,
                                value: isRadioSelected,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                onChanged: (value) {
                                  setState(() {
                                    isRadioSelected = 2;
                                  });
                                },
                                title: const Text('GeeksforGeeks'),
                              )
                            ],
                          ),
                        ),
                      );
                    });
                  },
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 18.0),
                child: Icon(Icons.sort),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          SizedBox(
              height: 290,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bannerList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: Image.network(
                            bannerList[index].url,
                            height: 150,
                            width: 250,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            bannerList[index].productName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              child: Text(
                                bannerList[index].describtion,
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 61, 178, 65)),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              child: Text(
                                bannerList[index].pricesAndffer,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              )),
                        ),
                      ],
                    ),
                  );
                },
              )),
          SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 222, 222, 222),
                                shape: BoxShape.circle),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              child: Icon(
                                Icons.credit_card,
                                color: Colors.black,
                                size: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              categoryList[index].categoryName,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )),
          Container(
              color: const Color.fromRGBO(251, 232, 177, 1),
              height: 60,
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  "Deals of The Day",
                  style: TextStyle(
                    letterSpacing: .5,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              )),
          Container(
              color: const Color.fromRGBO(251, 232, 177, 1),
              height: 30,
              alignment: Alignment.center,
              width: double.infinity,
              child: Container(
                color: Colors.black,
                child: const Padding(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                  child: Text(
                    "Big Brands Big Savings",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 2,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
          Container(
            color: const Color.fromARGB(255, 251, 232, 177),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 15),
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 60,
                      crossAxisSpacing: 15),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.black,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: Image.network(DealsList[index].url,
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                color: Colors.black,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    DealsList[index].describtion,
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                )),
                            Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    DealsList[index].pricesAndOffer,
                                    style: const TextStyle(
                                      fontSize: 13.5,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                          ]),
                    );
                  }),
            ),
          ),
          SizedBox(
              height: 290,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: .5,
                        color: Colors.white,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 20, right: 20),
                              child: Image.network(
                                RecentlyViewedList[index].url,
                                height: 150,
                                width: 250,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: Text(
                                  RecentlyViewedList[index].describtion,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )),
        ])));
  }
}

class Banners {
  String url;
  String productName;
  String describtion;
  String pricesAndffer;

  Banners(this.url, this.productName, this.describtion, this.pricesAndffer);
}

class category {
  String icons;
  String categoryName;

  category(this.icons, this.categoryName);
}

class Deals {
  String url;
  String describtion;
  String pricesAndOffer;

  Deals(this.url, this.describtion, this.pricesAndOffer);
}

class RecentlyViewed {
  String url;
  String describtion;

  RecentlyViewed(this.url, this.describtion);
}
