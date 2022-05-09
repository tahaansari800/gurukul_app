import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import '../constant.dart';

///Setting Screen
class SettingScrn extends StatefulWidget {
  static String routName = '/settings_screen';
  const SettingScrn({Key? key}) : super(key: key);

  @override
  State<SettingScrn> createState() => _SettingScrnState();
}

class _SettingScrnState extends State<SettingScrn> {
  List<String> classType = ['Individual', 'Group'];
  List<String> genre = ['Bansuri', 'Vocal', 'Dhrupad Bansuri'];
  List<String> modeOfClass = ['Offline', 'Online'];
  Object? classTypeValue;
  Object? genreTypeValue;
  Object? modeOfClassTypeValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pop(context);
        },
        title: 'Settings  ',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Genre',
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
                        value: genreTypeValue,
                        items: genre
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
                            genreTypeValue = _value;
                          });
                          log('$_value');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              const Divider(
                color: orange,
                thickness: 1,
              ),
            ]),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Mode of Class',
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
                        value: modeOfClassTypeValue,
                        items: modeOfClass
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
                            genreTypeValue = _value;
                          });
                          log('$_value');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              const Divider(
                color: orange,
                thickness: 1,
              ),
            ]),
            // Column(children: [
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Expanded(
            //         flex: 1,
            //         child: Text(
            //           'Class Type',
            //           style: bodyText1(color: textColor),
            //         ),
            //       ),
            //       // SizedBox(width: 30,),
            //       Expanded(
            //         flex: 2,
            //         child: SizedBox(
            //           child: DropdownButton(
            //             // menuMaxHeight: 300,
            //             //itemHeight: 300.0,
            //             hint: const Text(
            //               "select",
            //               style: TextStyle(fontSize: 17),
            //               textAlign: TextAlign.center,
            //             ),
            //             underline: const SizedBox(),
            //             isExpanded: true,
            //             iconEnabledColor: Colors.black,
            //             icon: const Icon(Icons.arrow_drop_down),
            //             style: const TextStyle(color: Colors.black),
            //             focusColor: Colors.white,
            //             value: classTypeValue,
            //             items: classType
            //                 .map<DropdownMenuItem<String>>((String valueItem) {
            //               return DropdownMenuItem<String>(
            //                 value: valueItem,
            //                 child: Text(
            //                   valueItem,
            //                   style: bodyText1Bold(color: textColor),
            //                 ),
            //               );
            //             }).toList(),
            //             onChanged: (_value) {
            //               setState(() {
            //                 genreTypeValue = _value;
            //               });
            //               log('$_value');
            //             },
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            //   // const SizedBox(
            //   //   height: 10,
            //   // ),
            //   const Divider(
            //     color: orange,
            //     thickness: 1,
            //   ),
            // ]),
          ],
        ),
      ),
    );
  }

  Widget dropDownlistTile(
      {required String text,
      required List<String> data,
      required Object? valueType}) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              text,
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
                value: valueType,
                items: data.map<DropdownMenuItem<String>>((String valueItem) {
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
                    valueType = _value;
                  });
                  log('$_value');
                },
              ),
            ),
          ),
        ],
      ),
      // const SizedBox(
      //   height: 10,
      // ),
      const Divider(
        color: orange,
        thickness: 1,
      ),
    ]);
  }
}
