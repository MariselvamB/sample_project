// ignore_for_file: file_names, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';

class VerticalScrolPage extends StatefulWidget {
  const VerticalScrolPage({super.key});

  @override
  State<VerticalScrolPage> createState() => _VerticalScrolPageState();
}

class _VerticalScrolPageState extends State<VerticalScrolPage> {
  List<String> productPicture = [
    "https://rukminim1.flixcart.com/fk-p-flap/844/140/image/b0fdca2826223202.jpg?q=50",
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
  List<String> productName = [
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

  // ignore: non_constant_identifier_names
  List<String> Productupdate = [
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

  List<String> BrandName = [
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
          height: 1,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 233, 230, 230)),
        );
      },
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Image.network(
                      productPicture[index],
                      height: 150,
                      width: 250,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Text(
                        productName[index],
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
                        Productupdate[index],
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
                        BrandName[index],
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      )),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
