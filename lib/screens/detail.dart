import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';

import '../model/model_class.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> imageList = [
    "https://i.pinimg.com/236x/51/65/58/51655846a635918698a0b7fad48f65f5.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYZa5maK_VoscoiBP7oF_R4U3QSRkMDyANbo20QZwQvS25M3eYc16JlmL1Qb5tJVQXTZM&usqp=CAU",
    "https://i.pinimg.com/474x/9e/f9/23/9ef923c65bc518d0de6094a48b4b1de6.jpg",
    "https://i.pinimg.com/236x/24/cd/15/24cd15bb7e643cd12e7b0c6234d41b4f.jpg",
    "https://i.pinimg.com/originals/01/8a/27/018a2764a51742bcdb328b39082de2d9.jpg",
    "https://i.pinimg.com/236x/f5/d6/58/f5d6582b71ed4f15604a91cc36ed74c4.jpg",
    "https://i.pinimg.com/236x/6a/54/56/6a5456efc43ed8172af046071646fca0.jpg",
    "https://i.pinimg.com/236x/ec/b7/e5/ecb7e5fbe314674a99d385a0e5829501.jpg",
    "https://i.pinimg.com/474x/4c/01/8b/4c018b9f0984229c112ad9b1e3031795.jpg",
    "https://i.pinimg.com/236x/2c/ed/82/2ced82e7b9cd6e8000d02ce98617ce1f.jpg",
    "https://i.pinimg.com/236x/9e/d6/3a/9ed63a722dcce1bf1259447792727c48.jpg",
    "https://i.pinimg.com/236x/29/10/fa/2910faebd67065c46c2923af16373760.jpg",
    "https://i.pinimg.com/474x/fd/2b/3e/fd2b3eb522e8dc849c2fe3cacaa803dd.jpg",
    "https://i.pinimg.com/originals/5d/ae/0b/5dae0b32586f7a370db8311f2eba96b6.jpg",
    "https://i.pinimg.com/236x/6c/2a/fd/6c2afd7e835107f40177a3279df56200.jpg",
    "https://i.pinimg.com/236x/87/33/34/8733341ed14a169f99469f7a017aa56a.jpg",
  ];

  Color BGColor = Colors.white;
  String font = "Australia";
  bool isImage = true;
  double opacity = 1;

  String? selectedImage;
  Color fontColour = Colors.black87;
  GlobalKey key = GlobalKey();

  Future<void> copyQuote({required QuotesModel quotes}) async {
    await Clipboard.setData(
      ClipboardData(text: "${quotes.quotes}\n ~ ${quotes.author}"),
    ).then((value) {
      SnackBar snackBar = const SnackBar(
        content: Text("Quote copied to clipboard"),
        backgroundColor: Colors.green,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }

  Future<void> saveToGallery() async {
    try {
      RenderRepaintBoundary boundary =
          key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      final buffer = byteData!.buffer.asUint8List();
      final result = await ImageGallerySaver.saveImage(buffer);
      if (result['isSuccess']) {
        SnackBar snackBar = const SnackBar(
          content: Text("Image saved to gallery"),
          backgroundColor: Colors.green,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } catch (e) {
      SnackBar snackBar = const SnackBar(
        content: Text("Failed to save image"),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> shareImage() async {
    try {
      RenderRepaintBoundary boundary =
          key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      final buffer = byteData!.buffer.asUint8List();

      final directory = await getTemporaryDirectory();
      final file = await File('${directory.path}/post_image.png').create();
      await file.writeAsBytes(buffer);

      await ShareExtend.share(file.path, "image");
    } catch (e) {
      SnackBar snackBar = const SnackBar(
        content: Text("Failed to share image"),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    QuotesModel fest =
        ModalRoute.of(context)!.settings.arguments as QuotesModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb4e6ff),
        elevation: 0,
        centerTitle: true,
        title: Text(
          fest.category,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: double.infinity,
                height: 340.h,
                child: RepaintBoundary(
                  key: key,
                  child: Container(
                    decoration: BoxDecoration(
                      color: isImage ? null : BGColor,
                      image: isImage && selectedImage != null
                          ? DecorationImage(
                              image: NetworkImage(selectedImage!),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            fest.quotes,
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              color: fontColour,
                              fontFamily: font,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            "- ${fest.category}",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: fontColour,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Choose background image:",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50.h,
                            child: ListView.builder(
                              itemCount: imageList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedImage = imageList[index];
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: 25.h,
                                      backgroundImage:
                                          NetworkImage(imageList[index]),
                                      backgroundColor: Colors.grey.shade200,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      // Column(
                      //   children: [
                      //     Row(
                      //       mainAxisAlignment: MainAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           "Choose Background Colour:",
                      //           style: TextStyle(fontSize: 15.sp),
                      //         ),
                      //         IconButton(
                      //           onPressed: () {
                      //             showDialog(
                      //               context: context,
                      //               builder: (context) {
                      //                 return AlertDialog(
                      //                   title: Text(
                      //                     "Pick a Colour",
                      //                     style: TextStyle(fontSize: 16.sp),
                      //                   ),
                      //                   content: Column(
                      //                     mainAxisSize: MainAxisSize.min,
                      //                     children: [
                      //                       ColorPicker(
                      //                         pickerColor: BGColor,
                      //                         onColorChanged: (color) {
                      //                           setState(() {
                      //                             BGColor = color;
                      //                           });
                      //                         },
                      //                       ),
                      //                       ElevatedButton(
                      //                         onPressed: () {
                      //                           Navigator.pop(context);
                      //                         },
                      //                         child: const Text("Select"),
                      //                       ),
                      //                     ],
                      //                   ),
                      //                 );
                      //               },
                      //             );
                      //           },
                      //           icon: const Icon(Icons.color_lens),
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BackGround Color : ",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
                                width: double.infinity,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 18,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: GestureDetector(
                                      onTap: () {
                                        BGColor = Colors.primaries[index];
                                        setState(() {});
                                      },
                                      child: CircleAvatar(
                                        radius: 25.w,
                                        backgroundColor:
                                            Colors.primaries[index],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Color Opacity : ",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Slider(
                                min: 0,
                                max: 1,
                                activeColor: BGColor.withOpacity(opacity),
                                value: opacity,
                                onChanged: (val) {
                                  opacity = val;
                                  setState(() {});
                                },
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Select Font Colour:",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text(
                                              "Pick a Colour",
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                ColorPicker(
                                                  pickerColor: fontColour,
                                                  onColorChanged: (color) {
                                                    setState(() {
                                                      fontColour = color;
                                                    });
                                                  },
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text("Select"),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    icon: const Icon(Icons.color_lens),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () => shareImage(),
                                    icon: const Icon(Icons.share),
                                    label: const Text("Share"),
                                  ),
                                  const SizedBox(width: 30),
                                  ElevatedButton.icon(
                                    onPressed: () => saveToGallery(),
                                    icon: const Icon(Icons.save),
                                    label: const Text("Save"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
      // backgroundColor: Colors.blueGrey,
    );
  }
}
