// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:simpleapp/http/network_service.dart';
// import 'package:simpleapp/model/mari/Google.dart';
// import 'package:simpleapp/utils/app_colors.dart';

// class GoogleTranslatePage extends StatefulWidget {
//   const GoogleTranslatePage({super.key});

//   @override
//   State<GoogleTranslatePage> createState() => _GoogleTranslatePageState();
// }

// class _GoogleTranslatePageState extends State<GoogleTranslatePage> {
//   TextEditingController inputController = TextEditingController();
//   TextEditingController outputController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Row(
//           children: [
//             Text(
//               "Google ",
//               style: TextStyle(
//                   fontWeight: FontWeight.w600, color: AppColors.black),
//             ),
//             Text(" Translate",
//                 style: TextStyle(
//                   color: AppColors.black,
//                 )),
//           ],
//         ),
//         leading: Icon(
//           Icons.star,
//           color: AppColors.black,
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 20),
//             child: Icon(
//               Icons.settings,
//               color: AppColors.black,
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   right: 20, left: 20, bottom: 50, top: 50),
//               child: TextField(
//                 controller: inputController,
//                 keyboardType: TextInputType.multiline,
//                 maxLength: null,
//                 maxLines: null,
//                 style: TextStyle(fontSize: 30),
//                 decoration: InputDecoration.collapsed(
//                     hintText: "Enter text", hintStyle: TextStyle(fontSize: 30)),
//               ),
//             ),
//             GestureDetector(
//               onTap: (() async {
//                 if (inputController.text.isEmpty) {
//                   print("textfield is empty");
//                 } else {
//                   Google google =
//                       await GoogleTranslate.postGoogle(outputController.text);
//                 }
//               }),
//               child: Container(
//                 margin:
//                     EdgeInsets.only(right: 20, left: 20, bottom: 20, top: 50),
//                 color: AppColors.blue,
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(
//                           right: 10, left: 10, bottom: 10, top: 10),
//                       child: Icon(Icons.paste),
//                     ),
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(bottom: 10, top: 10, right: 10),
//                       child: Text("paste",
//                           style:
//                               TextStyle(color: AppColors.black, fontSize: 20)),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(right: 20, left: 20, bottom: 20, top: 50),
//               color: AppColors.white,
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                     right: 20, left: 20, bottom: 50, top: 50),
//                 child: TextField(
//                   controller: outputController,
//                   keyboardType: TextInputType.multiline,
//                   maxLength: null,
//                   maxLines: null,
//                   style: TextStyle(fontSize: 30),
//                   decoration: InputDecoration.collapsed(
//                       hintText: "Enter text",
//                       hintStyle: TextStyle(fontSize: 30)),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
