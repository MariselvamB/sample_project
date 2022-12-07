// ignore_for_file: prefer_const_constructors, unused_element, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class filterPage extends StatefulWidget {
  const filterPage({super.key});

  @override
  State<filterPage> createState() => _filterPageState();
}

class _filterPageState extends State<filterPage> {
  int seletedForRadio = 0;
  int selectedId = 0;
  bool isCheckedByClearFilter = false;

  int sliderValue = 0;

  int? seletedForLocationRadio = 1;
  bool isCurrentposition = false;

  List<filterCategory> filterCategoryList = [
    filterCategory(1, "price"),
    filterCategory(2, "Brand"),
    filterCategory(3, "Deliver At"),
    filterCategory(4, "Plus (FAssured)"),
    filterCategory(5, "Customer Rating"),
    filterCategory(6, "Gst Invoice Available"),
    filterCategory(7, "RAM"),
    filterCategory(8, "Internal storage"),
    filterCategory(9, "Battery Capacity"),
    filterCategory(10, "Screen Size"),
    filterCategory(11, "primary Camara"),
    filterCategory(12, "secondary Camara"),
    filterCategory(13, "Processor Brand"),
    filterCategory(14, "sapciality"),
    filterCategory(15, "Resolution Type"),
    filterCategory(16, "Operating System"),
    filterCategory(17, "Network Type"),
    filterCategory(18, "Sim Type"),
    filterCategory(19, "Offers"),
    filterCategory(20, "Features"),
    filterCategory(21, "Types"),
    filterCategory(22, "Number of Cores"),
    filterCategory(23, "Availability"),
    filterCategory(24, "Discount"),
    filterCategory(25, "Clock Speed"),
    filterCategory(26, "catagory"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        backgroundColor: const Color.fromARGB(255, 73, 70, 70),
        title: const Text(
          "Filters",
          style: TextStyle(letterSpacing: 1),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10, top: 20),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    showcleaFilterBottomSheet(context);
                  });
                },
                child:
                    Text("Clear Filter", style: TextStyle(letterSpacing: .3))),
          )
        ],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Card(
              elevation: 0,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: filterCategoryList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedId = filterCategoryList[index].id;
                        });
                      },
                      child: Container(
                        color: selectedId == filterCategoryList[index].id
                            ? Colors.white
                            : Color.fromARGB(255, 213, 210, 210),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 50, top: 15, bottom: 15),
                          child: Text(
                            filterCategoryList[index].name,
                            style: TextStyle(fontSize: 16, letterSpacing: 0.5),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Expanded(
            flex: 2,
            child: _buildRightView(selectedId),
          )
        ],
      ),
    );
  }

  Future<dynamic> showcleaFilterBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return SizedBox(
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Icon(Icons.close)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          "Clear Filters",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 10, left: 15),
                    child: Text(
                      "Clear Filters",
                      style: TextStyle(
                          letterSpacing: .3,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, left: 15),
                    child: Text(
                      "Would you like to clear the folowing filters?",
                      style: TextStyle(letterSpacing: .3),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 15, bottom: 8),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Checkbox(
                              value: isCheckedByClearFilter,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckedByClearFilter = value ?? false;
                                });
                              },
                            ),
                          ),
                          Text("DeliverAt")
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero)),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              onPressed: () {
                                setState(() {
                                  Navigator.pop(context);
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  "Cencel",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              )),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero)),
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.deepOrange)),
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => filterPage()));
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Text("Clear"),
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          });
        });
  }

  Widget _buildRightView(int id) {
    switch (id) {
      case 1:
        return _buildPriceWidget();
      case 2:
        return _buildBrandWidget();
      case 3:
        return _buildDeliveryAtWidget();
      case 4:
        return _buildPlusFassuredWidget();
      case 5:
        return _buildCustomerRatingWidget();
      case 6:
        return _buildGstInvoiceAvailableWidget();
      case 7:
        return _buildRamWidget();
      case 8:
        return _buildInternalStorageWidget();
      case 9:
        return _buildBatteryCapacityWidget();
      case 10:
        return _buildScreenSizeWidget();
      case 11:
        return _buildPrimaryCamaraWidget();
      case 12:
        return _buildSecondaryCamaraWidget();
      case 13:
        return _buildProcessorBrandWidget();
      case 14:
        return _buildSapcilityWidget();
      case 15:
        return _buildResolutionTypeWidget();
      case 16:
        return _buildOperationgSystemWidget();
      case 17:
        return _buildNetworkTypeWidget();
      case 18:
        return _buildSimTypeWidget();
      case 19:
        return _buildOffersWidget();
      case 20:
        return _buildFeaturesWidget();
      case 21:
        return _buildTypesWidget();
      case 22:
        return _buildNumbersOfCoresWidget();
      case 23:
        return _buildAvailabilityWidget();
      case 24:
        return _buildDiscountWidget();
      case 25:
        return _buildClockSpeedWidget();
      case 26:
        return _buildCatagoryWidget();

      default:
        return Container();
    }
  }

  Widget _buildPriceWidget() {
    return Card(
      child: Container(
        alignment: Alignment.topCenter,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Price",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 50,
                  color: Colors.white,
                  child: Slider.adaptive(
                    thumbColor: Colors.black,
                    divisions: 6,
                    label: sliderValue.toString(),
                    min: 0,
                    max: 30000,
                    value: sliderValue.toDouble(),
                    onChanged: (double value) {
                      setState(() {
                        sliderValue = value.toInt();
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBrandWidget() {
    return Container(
      color: Colors.green,
    );
  }

  Widget _buildDeliveryAtWidget() {
    List<locationAdderss> locationAdderssList = [
      locationAdderss(1, "Mariselvam B,628502",
          "135 K6/1,Solai Bavanam,rajiv Gandhi Nagar,North Illupaiurani,Kovilpatti"),
      locationAdderss(
          2, "Mariselvam B,628502", "North Illupaiurani,Kovilpatti"),
    ];

    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 5, top: 10, bottom: 10, right: 5),
              child: ListTile(
                  leading: Text("Filter by location"),
                  trailing: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 25, bottom: 25, right: 20),
                      child: Switch(
                          value: isCurrentposition,
                          onChanged: (bool value) {
                            setState(() {
                              isCurrentposition = value;
                            });
                          }))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                color: Color.fromARGB(255, 209, 212, 209),
                height: 1,
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.separated(
              separatorBuilder: (context, index) {
                return Container(
                  height: 1,
                  color: Colors.grey,
                );
              },
              itemCount: locationAdderssList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return RadioListTile(
                    title: Text(locationAdderssList[index].nameAndPincode),
                    subtitle: Text(
                      overflow: TextOverflow.ellipsis,
                      locationAdderssList[index].address,
                    ),
                    value: locationAdderssList[index].id,
                    groupValue: seletedForLocationRadio,
                    onChanged: (Value) {
                      setState(() {
                        seletedForLocationRadio = locationAdderssList[index].id;
                      });
                    });
              }),
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.red,
        )
      ],
    );
  }

  Widget _buildPlusFassuredWidget() {
    bool isCheckedByPlusFassure = false;
    return Container(
      alignment: Alignment.topLeft,
      color: Colors.white,
      child: Container(
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Checkbox(
              value: isCheckedByPlusFassure,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedByPlusFassure = value ?? false;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
            child: const Text('Plus (FAssured)'),
          ),
        ]),
      ),
    );
  }

  Widget _buildCustomerRatingWidget() {
    bool isCheckedByCustomerRating = false;
    List<CustomerRating> CustomerRatinglist = [
      CustomerRating("4 ", Icons.star, " above"),
      CustomerRating("3 ", Icons.star, " above"),
    ];
    return Container(
      alignment: Alignment.topLeft,
      color: Colors.white,
      child: ListView.builder(
          itemCount: CustomerRatinglist.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.white,
              child: ListTile(
                leading: Checkbox(
                    value: isCheckedByCustomerRating,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedByCustomerRating = value ?? false;
                      });
                    }),
                title: Row(
                  children: [
                    Text(CustomerRatinglist[index].rate),
                    Icon(
                      CustomerRatinglist[index].icon,
                      size: 15,
                    ),
                    Text(CustomerRatinglist[index].range),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget _buildGstInvoiceAvailableWidget() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget _buildRamWidget() {
    return Container(
      color: Colors.amber,
    );
  }

  Widget _buildInternalStorageWidget() {
    return Container(
      color: Colors.green,
    );
  }

  Widget _buildBatteryCapacityWidget() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget _buildScreenSizeWidget() {
    return Container(
      color: Colors.amber,
    );
  }

  Widget _buildPrimaryCamaraWidget() {
    return Container(
      color: Colors.green,
    );
  }

  Widget _buildSecondaryCamaraWidget() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget _buildProcessorBrandWidget() {
    return Container(
      color: Colors.amber,
    );
  }

  Widget _buildSapcilityWidget() {
    return Container(
      color: Colors.green,
    );
  }

  Widget _buildResolutionTypeWidget() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget _buildOperationgSystemWidget() {
    return Container(
      color: Colors.amber,
    );
  }

  Widget _buildNetworkTypeWidget() {
    return Container(
      color: Colors.green,
    );
  }

  Widget _buildSimTypeWidget() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget _buildOffersWidget() {
    return Container(
      color: Colors.amber,
    );
  }

  Widget _buildFeaturesWidget() {
    return Container(
      color: Colors.green,
    );
  }

  Widget _buildTypesWidget() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget _buildNumbersOfCoresWidget() {
    return Container(
      color: Colors.amber,
    );
  }

  Widget _buildAvailabilityWidget() {
    return Container(
      color: Colors.green,
    );
  }

  Widget _buildDiscountWidget() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget _buildClockSpeedWidget() {
    return Container(
      color: Colors.green,
    );
  }

  Widget _buildCatagoryWidget() {
    return Container(
      color: Colors.blue,
    );
  }
}

class filterCategory {
  String name;
  int id;
  filterCategory(this.id, this.name);
}

class CustomerRating {
  String rate;
  IconData icon;
  String range;
  CustomerRating(this.rate, this.icon, this.range);
}

class locationAdderss {
  int id;
  String nameAndPincode;
  String address;

  locationAdderss(this.id, this.nameAndPincode, this.address);
}
