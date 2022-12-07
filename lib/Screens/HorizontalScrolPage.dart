// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'VerticalScrolPage.dart';

class HorizontalScrolPage extends StatefulWidget {
  const HorizontalScrolPage({super.key});

  @override
  State<HorizontalScrolPage> createState() => _HorizontalScrolPageState();
}

class _HorizontalScrolPageState extends State<HorizontalScrolPage> {
  List<String> productPicture1 = [
    "https://rukminim1.flixcart.com/image/200/200/printer/j/j/y/hp-laserjet-m1005-multifunction-original-imadxhzpeb9qbrfg.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/kmp7ngw0/monitor/j/z/h/s2721hn-27-py0df-dell-original-imagfjphuywuh2a7.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/hair-dryer/c/t/g/philips-hp8100-46-original-imaemymzuxrnzfjb.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/l5jxt3k0/dslr-camera/m/n/a/-original-imagg7hsggshhwbz.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/kx50gi80/projector/r/9/p/zeb-pixa-play-12-5-6-dobly-audio-led-projector-zebronics-original-imag9z3yujqmzqt4.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/l1pc3gw0/power-bank/e/u/y/-original-imagd7dzan7sakt2.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/k59xci80/watch/t/p/9/premium-luxury-business-casual-trendy-water-resistant-original-imafnzmembfxdyhv.jpeg?q=70",
    "https://rukminim1.flixcart.com/flap/200/200/image/83ed05de14e2176d.jpg?q=70",
    "https://rukminim1.flixcart.com/image/416/416/kiqbma80-0/ball/y/q/5/400-22-country-colour-5-1-1360br-football-nivia-original-imafyg5vzbdn5gy3.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/416/416/kic17rk0-0/stroller-pram/2/q/j/cortina-cx-stroller-iron-for-newborn-babies-and-toddlers-0m-pram-original-imafy5z9n3hgagqt.jpeg?q=70"
  ];
  List<String> productName1 = [
    "printers",
    "Moniteors",
    "Best of hair dryers",
    "Top MIrrorless camara",
    "projectors",
    "Premium powerBanks",
    "watches",
    "Top Trending Styles",
    "Premium Footballs",
    "Baby Gear"
  ];

  List<String> Productupdate1 = [
    "From ₹3999 ",
    "From ₹8279 ",
    "From ₹399 ",
    "From ₹57,999",
    "From ₹9999 ",
    "Shop Now",
    "From ₹399",
    "From ₹399",
    "Up to 60% Off",
    "Up to 70% Off"
  ];

  List<String> BrandName1 = [
    "HP",
    "DELL",
    "Philips",
    "Product Exch",
    "ZWBRONICS",
    "Mi,realme & more",
    "Best selling",
    "Shoes,Sandals",
    "Nivia,Cosco & more",
    "MeeMee & More"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Container(
          width: .5,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 233, 230, 230)),
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const VerticalScrolPage(),
                              ));
                        },
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20, right: 20),
                            child: Image.network(
                              productPicture1[index],
                              height: 150,
                              width: 250,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: Text(
                              productName1[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            child: Text(
                              Productupdate1[index],
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 61, 178, 65)),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 20),
                        child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            child: Text(
                              BrandName1[index],
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
