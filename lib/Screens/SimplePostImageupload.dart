import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpleapp/http/network_service.dart';
import 'package:simpleapp/utils/app_colors.dart';

class SimplePostImagePage extends StatefulWidget {
  const SimplePostImagePage({super.key});

  @override
  State<SimplePostImagePage> createState() => _SimplePostImagePageState();
}

class _SimplePostImagePageState extends State<SimplePostImagePage> {
  List<profilePhotoBottomsheet> ProfilePhotoBottomsheet = [
    profilePhotoBottomsheet(Icons.camera_alt, "Camera"),
    profilePhotoBottomsheet(Icons.photo, "Gallary"),
    profilePhotoBottomsheet(Icons.emoji_emotions, "Emoji & stickers"),
    profilePhotoBottomsheet(Icons.search, "search web")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff128C7E),
        leading: Icon(Icons.arrow_back),
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 40),
                      alignment: Alignment.bottomCenter,
                      height: 180,
                      width: 180,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                      child: Icon(
                        Icons.person,
                        size: 180,
                      )),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff128C7E),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        ProfileBottomSheet(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.camera_alt,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 20),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Name", style: TextStyle(color: Colors.grey)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                    child: Text("love", style: TextStyle(color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                        "This is not your username or pin.This name will be visible to your whatsapp contacts "),
                  ),
                  Divider(),
                ],
              ),
              isThreeLine: true,
              trailing: Icon(
                Icons.edit,
                color: Color(0xff128C7E),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About", style: TextStyle(color: Colors.grey)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                    child: Text(
                      "Alone",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Divider(),
                ],
              ),
              isThreeLine: true,
              trailing: Icon(
                Icons.edit,
                color: Color(0xff128C7E),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone", style: TextStyle(color: Colors.grey)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                    child: Text(
                      "9629084116",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<dynamic> ProfileBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return SizedBox(
              height: 250,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 30,
                        ),
                        child: Container(
                            child: Text(
                          "Profile Photo",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30, right: 30, bottom: 30),
                        child: Icon(Icons.delete),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: ProfilePhotoBottomsheet.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Container(
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            shape: BoxShape.circle),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              onPressed: () async {
                                                FilePickerResult? result =
                                                    await FilePicker.platform
                                                        .pickFiles(
                                                            type: FileType.any);

                                                if (result != null) {
                                                  // File selectedFile = File(
                                                  //     result.files.first.path ??
                                                  //         '');

                                                  String base64String =
                                                      base64Encode(result
                                                          .files.first.bytes!
                                                          .toList());

                                                  NetworkService.postImage(
                                                      base64String);
                                                }
                                                // FilePickerResult? result =
                                                //     await FilePicker.platform
                                                //         .pickFiles(
                                                //             allowMultiple:
                                                //                 true);

                                                // if (result != null) {
                                                //   List<File> files = result
                                                //       .paths
                                                //       .map((path) => File(path))
                                                //       .toList();
                                                // } else {
                                                //   // User canceled the picker
                                                // }
                                              },
                                              icon: Icon(
                                                ProfilePhotoBottomsheet[index]
                                                    .icons,
                                                color: Color(0xff128C7E),
                                              )),
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(ProfilePhotoBottomsheet[index]
                                        .optionName),
                                  )
                                ],
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            );
          });
        });
  }
}

class profilePhotoBottomsheet {
  IconData icons;
  String optionName;
  profilePhotoBottomsheet(this.icons, this.optionName);
}
