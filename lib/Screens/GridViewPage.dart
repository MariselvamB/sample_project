// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<String> GridViewPicture = [
    "https://images.hindustantimes.com/tech/img/2022/09/22/960x540/Untitled_design_32_1663843377640_1663843378083_1663843378083.jpg",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202010/Flipkart-Amazon-Festive-Sales_1200x768.jpeg?size=690:388",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202207/Flipkart_Big_Saving_Days_sale.jpg?VersionId=rpfOac9mIXWVYmSd8n_c3bmTGHTjxMI9&size=690:388",
    "https://www.gizbot.com/img/2021/09/flipkart-the-big-billion-days-sale-2021-samsung-realme-poco-apple-mobile-discounts-1632150341.jpg",
    "https://st1.latestly.com/wp-content/uploads/2021/10/11-Image-10-784x441.jpg",
    "https://images.yourstory.com/cs/wordpress/2014/10/BigBillionDay.jpg",
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
    return GridView.builder(
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 176, 12, 12),
              child: Image.network(
                GridViewPicture[index],
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Text(
                    BrandName[index],
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
                    BrandName[index],
                    style: const TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 61, 178, 65)),
                  )),
            ),
          ],
        );
      },
      padding: const EdgeInsets.only(),
    );
  }
}
