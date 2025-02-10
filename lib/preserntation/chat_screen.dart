import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/assets/asset_resources.dart';
import 'package:whatsapp/preserntation/image_picker.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  File? _image;

  final ImagePicker _picker = ImagePicker();

  List<Chat> chatlist = [
    Chat(
        image: AssetResources.baby,
        name: "baby",
        message: "hi",
        time: "10.45 am"),
    Chat(
        image: AssetResources.cat,
        name: "shazi",
        message: "hi ",
        time: "10.30 am"),
    Chat(
        image: AssetResources.withPet,
        name: "ravi",
        message: "good mrng",
        time: "9.00 am"),
    Chat(
        image: AssetResources.cat, name: "anu", message: "hello", time: "8.30"),
    Chat(
        image: AssetResources.withPet,
        name: "saam",
        message: "hi",
        time: "6.00 am"),
    Chat(
        image: AssetResources.image2,
        name: "siya",
        message: "hi",
        time: "6.00 am"),
    Chat(
        image: AssetResources.withPet,
        name: "miya",
        message: "hi",
        time: "6.00 am"),
    Chat(
        image: AssetResources.newImage,
        name: "chechu",
        message: "hi",
        time: "6.00 am"),
    Chat(
        image: AssetResources.thulip,
        name: "minu",
        message: "hi",
        time: "5.00 pm"),
    Chat(
        image: AssetResources.sunflower,
        name: "monu",
        message: "hi",
        time: "4.00 pm"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Whatsapp",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(flex: 8),
                IconButton(
                  icon: Icon(Icons.photo_camera),
                  onPressed: () {
                    showModalBottomSheet(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 200,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.photo),
                                title: Text("Pick image from gallery"),
                                onTap: () {
                                  _pickImageFromGallery();
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.camera),
                                title: Text("Pick image from camera"),
                                onTap: () {
                                  _captureImageWithCamera();
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    print("menu pressed");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: chatlist.length,
        itemBuilder: (
          context,
          index,
        ) {
          Spacer(
            flex: 10,
          );

          return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(chatlist[index].image),
                maxRadius: 30,
              ),
              title: Text(chatlist[index].name),
              subtitle: Text(chatlist[index].message),
              trailing: Text(chatlist[index].time));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(" on pressed");
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _captureImageWithCamera() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      File capturedImage = File(pickedFile.path);
      Navigator.pop(context);

      setState(() {
        _image = capturedImage;
      });

      Future.delayed(Duration(milliseconds: 100), () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ImageShowScreen(image: capturedImage),
          ),
        );
      });
    }
  }

  Future<void> _pickImageFromGallery() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      File capturedImage = File(pickedFile.path);
      Navigator.pop(context);
      setState(() {
        _image = capturedImage;
      });

      Future.delayed(Duration(milliseconds: 100), () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ImageShowScreen(image: capturedImage),
          ),
        );
      });
    }
  }
}

class Chat {
  String image;
  String name;
  String message;
  String time;
  Chat(
      {required this.image,
      required this.name,
      required this.message,
      required this.time});
}
