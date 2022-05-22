import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import 'package:grukul_schedular_app/screens/componant/custom_list_tile.dart';
import 'package:grukul_schedular_app/screens/order_placed_scrn.dart';

class MyOrders extends StatefulWidget {
  static String routName = '/my_orders';
  const MyOrders({Key? key}) : super(key: key);
  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  List<String> deliverylList = ['Address', 'Gurukul'];
  List<String> paymentList = ['Online', 'Cash'];
  List<String> eScalSizeList = [
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#'
  ];
  Object? gender;
  Object? delivery;
  Object? payment;
  Object? eScaleSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pop(context);
        },
        title: 'My Orders',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              // padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              width: double.infinity,
              height: scHeight(context) / 5.2,
              decoration: BoxDecoration(
                  color: orange, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  //add images
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/flutes_scrn.png',
                        fit: BoxFit.cover,
                      )),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //add text
                          Text(
                            "Bansuri",
                            style: headline2(color: textColor),
                          ),
                          Text(
                            "e-scale measurement",
                            style: bodyText1(color: textColor),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            height: scHeight(context) * 0.05,
                            width: scWidth(context) / 3,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(8)),
                            child: DropdownButton(
                              menuMaxHeight: 200,
                              // itemHeight: 100.0,
                              hint: const Text(
                                "Select Size",
                                style: TextStyle(fontSize: 17),
                                textAlign: TextAlign.center,
                              ),
                              underline: const SizedBox(),
                              isExpanded: true,
                              iconEnabledColor: Colors.black,
                              icon: const Icon(Icons.arrow_drop_down),
                              style: const TextStyle(color: Colors.black),
                              focusColor: Colors.white,
                              value: eScaleSize,
                              items: eScalSizeList
                                  .map<DropdownMenuItem<String>>(
                                      (String valueItem) {
                                return DropdownMenuItem<String>(
                                  value: valueItem,
                                  child: Text(
                                    valueItem,
                                    style: bodyText1Bold(color: textColor),
                                  ),
                                );
                              }).toList(),
                              onChanged: (_value) {
                                setState(() {
                                  eScaleSize = _value;
                                });
                                ('$_value');
                              },
                            ),
                          ),
                          const Spacer(),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '₹ 2500',
                                style: bodyText1(color: textColor),
                              )),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomListTile(
                isTextField: false, text: 'Address', data: 'Mumbai, India'),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Delivery',
                      style: bodyText1(color: textColor),
                    ),
                  ),
                  // SizedBox(width: 30,),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      
                      child: DropdownButton(
                        // menuMaxHeight: 300,
                        //itemHeight: 300.0,
                        hint: const Text(
                          "select",
                          style: TextStyle(fontSize: 17),
                          textAlign: TextAlign.center,
                        ),
                        underline: const SizedBox(),
                        isExpanded: true,
                        iconEnabledColor: Colors.black,
                        icon: const Icon(Icons.arrow_drop_down),
                        style: const TextStyle(color: Colors.black),
                        focusColor: Colors.white,
                        value: delivery,
                        items: deliverylList
                            .map<DropdownMenuItem<String>>((String valueItem) {
                          return DropdownMenuItem<String>(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style: bodyText1Bold(color: textColor),
                            ),
                          );
                        }).toList(),
                        onChanged: (_value) {
                          setState(() {
                            delivery = _value;
                          });
                          log('$_value');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: orange,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Payment',
                      style: bodyText1(color: textColor),
                    ),
                  ),
                  // SizedBox(width: 30,),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: DropdownButton(
                        // menuMaxHeight: 300,
                        //itemHeight: 300.0,
                        hint: const Text(
                          "select",
                          style: TextStyle(fontSize: 17),
                          textAlign: TextAlign.center,
                        ),
                        underline: const SizedBox(),
                        isExpanded: true,
                        iconEnabledColor: Colors.black,
                        icon: const Icon(Icons.arrow_drop_down),
                        style: const TextStyle(color: Colors.black),
                        focusColor: Colors.white,
                        value: payment,
                        items: paymentList
                            .map<DropdownMenuItem<String>>((String valueItem) {
                          return DropdownMenuItem<String>(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style: bodyText1Bold(color: textColor),
                            ),
                          );
                        }).toList(),
                        onChanged: (_value) {
                          setState(() {
                            payment = _value;
                          });
                          log('$_value');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: orange,
                thickness: 1,
              ),
            ]),
            const Spacer(),
            CustomButton(
                ontap: () {
                  Navigator.pushNamed(context, OrderPlacedScrn.routName);
                },
                text: 'Order Placed',
                textColor: white,
                btnColor: orange),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
