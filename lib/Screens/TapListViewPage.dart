// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TaplistViewPage extends StatefulWidget {
  const TaplistViewPage({super.key});

  @override
  State<TaplistViewPage> createState() => _TaplistViewPageState();
}

class _TaplistViewPageState extends State<TaplistViewPage> {
  List<String> brandList = ["Tvs", "yamaha", "Bajaji", "Honda", "hero"];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Container(
          height: 1,
          decoration: const BoxDecoration(color: Colors.grey),
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  child: Image.network(
                    "https://rukminim1.flixcart.com/image/416/416/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70",
                    height: 150,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Permium Non-Geared Cycles",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      " Up to 40% Off",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 61, 178, 65)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: Text(
                      brandList[index],
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
    );

    // ignore: dead_code
    return ListView(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  height: 180,
                  width: 280,
                  child: Image.network(
                    "https://rukminim1.flixcart.com/image/416/416/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70",
                    height: 150,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Permium Non-Geared Cycles",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      " Up to 40% Off",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 61, 178, 65)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Hercules Hero & More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    )),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  height: 180,
                  width: 280,
                  child: Image.network(
                    "https://rukminim1.flixcart.com/image/416/416/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70",
                    height: 150,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Permium Non-Geared Cycles",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      " Up to 40% Off",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 61, 178, 65)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Hercules Hero & More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    )),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  height: 180,
                  width: 280,
                  child: Image.network(
                    "https://rukminim1.flixcart.com/image/416/416/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70",
                    height: 150,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Permium Non-Geared Cycles",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      " Up to 40% Off",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 61, 178, 65)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Hercules Hero & More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    )),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  height: 180,
                  width: 280,
                  child: Image.network(
                    "https://rukminim1.flixcart.com/image/416/416/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70",
                    height: 150,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Permium Non-Geared Cycles",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      " Up to 40% Off",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 61, 178, 65)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Hercules Hero & More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    )),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  height: 180,
                  width: 280,
                  child: Image.network(
                    "https://rukminim1.flixcart.com/image/416/416/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70",
                    height: 150,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Permium Non-Geared Cycles",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      " Up to 40% Off",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 61, 178, 65)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Hercules Hero & More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    )),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  height: 180,
                  width: 280,
                  child: Image.network(
                    "https://rukminim1.flixcart.com/image/416/416/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70",
                    height: 150,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Permium Non-Geared Cycles",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      " Up to 40% Off",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 61, 178, 65)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Hercules Hero & More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    )),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  height: 180,
                  width: 280,
                  child: Image.network(
                    "https://rukminim1.flixcart.com/image/416/416/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70",
                    height: 150,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Permium Non-Geared Cycles",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      " Up to 40% Off",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 61, 178, 65)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Hercules Hero & More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    )),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  height: 180,
                  width: 280,
                  child: Image.network(
                    "https://rukminim1.flixcart.com/image/416/416/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70",
                    height: 150,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Permium Non-Geared Cycles",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      " Up to 40% Off",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 61, 178, 65)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Text(
                      "Hercules Hero & More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    )),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
