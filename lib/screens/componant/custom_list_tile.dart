import 'package:flutter/material.dart';
import '../../constant.dart';

///edit all field except gender
class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.text,
    required this.data,
    this.isTextField = true,
  }) : super(key: key);
  final String text;
  final String data;

  ///true to show text field & false to show only text
  final bool isTextField;

  @override
  Widget build(BuildContext context) {
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
            child: isTextField == true
                ? TextFormField(
                    keyboardType: TextInputType.name,
                    initialValue: data,
                    // maxLength: 10,
                    decoration: const InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none)),
                    style: bodyText1Bold(color: textColor),
                  )
                : Text(
                    data,
                    style: bodyText1Bold(color: textColor),
                  ),
          ),
        ],
      ),
      isTextField == false
          ? const SizedBox(
              height: 10,
            )
          : const SizedBox(),
      const Divider(
        color: orange,
        thickness: 1,
      ),
    ]);
  }
}
