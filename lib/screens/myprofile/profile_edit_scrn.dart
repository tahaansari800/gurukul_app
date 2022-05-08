import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import '../../constant.dart';
import '../componant/custom_list_tile.dart';

class EditProfile extends StatefulWidget {
  static String routName = "/edit_profile";
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Object? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pop(context);
        },
        title: 'Edit Profile',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                const CustomListTile(text: 'Name', data: 'Shruti Pandey'),
                const CustomListTile(text: 'Phone', data: '9591919100'),
                const CustomListTile(
                    text: 'Email ID', data: 'student@account.com'),
                const CustomListTile(text: 'Address:', data: 'Mumbai, India'),
                // CustomListTile(text: 'Gender:', data: 'Female'),
                listTilegender(text: 'Gender:', data: 'Female'),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
                ontap: () {}, text: 'Save', textColor: white, btnColor: orange),
          ]),
        ),
      ),
    );
  }

  ///edit select gender
  Widget listTilegender({required String text, required String data}) {
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
                value: gender,
                items: genderList
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
                    gender = _value;
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
