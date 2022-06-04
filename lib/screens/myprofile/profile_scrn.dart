import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_navigation.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScrn extends StatefulWidget {
  const ProfileScrn({Key? key}) : super(key: key);

  @override
  State<ProfileScrn> createState() => _ProfileScrnState();
}

class _ProfileScrnState extends State<ProfileScrn> {
  final ImagePicker picker = ImagePicker();
  List? selectedimage;

  ///image file here only one image will exist so index always 0
  List<XFile> imageList = [];
  // List<File> selectedImage = [];
  dynamic _pickImageError;

  ///open camera
  openCamera(ImageSource source) async {
    try {
      final selected = await picker.pickImage(source: source);
      if (selected!.path.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Please select an image')));
        // selectedImage = imageList.map((e) => File(e.path)).toList();
      } else if (selected.path.isNotEmpty) {
        imageList.add(selected);
      } else {
        log('something went wrong');
      }
      setState(() {
        // imageList =selected as List<XFile>;
      });
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
  }

  ///show modal sheet to open camera or gallery
  Future<dynamic> bottomsheet(
    BuildContext context,
    VoidCallback opencamera,
    VoidCallback gallery,
  ) {
    return showModalBottomSheet(
        backgroundColor: orange,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        context: context,
        builder: (context) {
          return SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: scWidth(context) / 5,
                      child: const Divider(
                        thickness: 3,
                        color: white,
                      ),
                    ),
                    ListTile(
                      onTap: opencamera,
                      title: Text(
                        "Open Camera",
                        style: bodyText1(color: textColor),
                      ),
                      leading: const Icon(
                        Icons.camera_alt_outlined,
                        color: textColor,
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: white,
                    ),
                    ListTile(
                      onTap: gallery,
                      title: Text(
                        "Gallery",
                        style: bodyText1(color: textColor),
                      ),
                      leading: const Icon(
                        Icons.photo_outlined,
                        color: textColor,
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: white,
                    ),
                  ],
                ),
              ));
          // });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isappTitleIcon: true,
        appBar: AppBar(),
        ontap: () {
          Navigator.pushNamed(context, CustomBottomNavigation.routName);
        },
        title: ' Your Profile',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  //profile photo
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                    child: imageList.isNotEmpty
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.file(
                              File(imageList[0].path),
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                          )
                        : null,
                  ),
                  Positioned(
                      bottom: -3,
                      right: -5,
                      child: InkWell(
                        onTap: () {
                          //add camera functionlity to upload profiile photo
                          bottomsheet(context, () {
                            Navigator.pop(context);
                            openCamera(ImageSource.camera);
                          }, () {
                            Navigator.pop(context);
                            openCamera(ImageSource.gallery);
                          });
                        },
                        child: SizedBox(
                            child: CircleAvatar(
                                backgroundColor: orange,
                                radius: 14,
                                child: SvgPicture.asset(
                                  'assets/icons/fi-rr-camera.svg',
                                  height: 14,
                                  width: 14,
                                ))),
                      )),
                ],
              ),
            ),
            
            const Spacer(),
            ListView(
              shrinkWrap: true,
              children: [
                const Divider(
                  thickness: 1,
                  color: orange,
                ),
                listTile(text: 'Name:', data: 'Shruti Pandey'),
                listTile(text: 'Phone:', data: '9591919100'),
                listTile(text: 'Email ID:', data: 'student@account.com'),
                listTile(text: 'Address:', data: 'Mumbai, India'),
                listTile(text: 'Gender:', data: 'Female'),
                listTile(text: 'Mode of Class:', data: 'Offline'),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  ///listTile String image
  Widget listTile({required String text, required String data}) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: bodyText1(color: textColor),
            ),
            Text(
              data,
              style: bodyText1Bold(color: textColor),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Divider(
        color: orange,
        thickness: 1,
      ),
    ]);
  }
}
