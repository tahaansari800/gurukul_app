import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/classes_mode.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';

class DetailsScrn extends StatefulWidget {
  static String routName = '/detail_screen';
  const DetailsScrn({Key? key}) : super(key: key);

  @override
  State<DetailsScrn> createState() => _DetailsScrnState();
}

class _DetailsScrnState extends State<DetailsScrn> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  Object? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Details', ontap: () {  
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  //name
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        // hintText: 'Mobile Number',
                        label: const Text('Name*'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //email id
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        // hintText: 'Mobile Number',
                        label: const Text('Email Address*'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //mobile no
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        // hintText: 'Mobile Number',
                        label: const Text('Mobile Number*'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //address
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        // hintText: 'Mobile Number',
                        label: const Text('Address*'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //city
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        // hintText: 'Mobile Number',
                        label: const Text('City*'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //pincod
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        // hintText: 'Mobile Number',
                        label: const Text('Pincode*'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //gender
                  Container(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: DropdownButton(
                      // menuMaxHeight: 300,
                      //itemHeight: 300.0,
                      hint: const Text(
                        "Gender",
                        style: TextStyle(fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                      underline: const SizedBox(),
                      isExpanded: true,
                      iconEnabledColor: Colors.black,
                      icon: const Icon(Icons.arrow_drop_down),
                      style: const TextStyle(color: Colors.black),
                      focusColor: Colors.white,
                      value: gender,
                      items: genderList
                          .map<DropdownMenuItem<String>>((String valueItem) {
                        return DropdownMenuItem<String>(
                          value: valueItem,
                          child: Text(
                            valueItem,
                            style: const TextStyle(fontSize: 16),
                          ),
                        );
                      }).toList(),
                      onChanged: (_value) {
                        setState(() {
                          gender = _value;
                        });
                        log('$_value');
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // TextFormField(
                  //   keyboardType: TextInputType.name,
                  //   decoration: InputDecoration(
                  //       contentPadding:
                  //           const EdgeInsets.symmetric(horizontal: 20),
                  //       // hintText: 'Mobile Number',
                  //       label: const Text('Mobile Number'),
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(20))),
                  // ),

                  //date of birth
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.calendar_today_outlined),
                            onPressed: () {},
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        // hintText: 'Mobile Number',
                        label: const Text('date of birth*'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    btnColor: orange,
                    text: 'Next',
                    ontap: () {
                      Navigator.pushNamed(context, Classedmode.routName);
                    },
                    textColor: white,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
