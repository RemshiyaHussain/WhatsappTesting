// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageShowScreen extends StatefulWidget {
  File? image;
  ImageShowScreen({
    Key? key,
    this.image,
  });

  @override
  State<ImageShowScreen> createState() => _ImageShowScreenState();
}

class _ImageShowScreenState extends State<ImageShowScreen> {
  // final ImagePicker picker = ImagePicker();
  Future<File>? fetchData() async {
    await Future.delayed(const Duration(milliseconds: 20)); // Simulate delay
    return widget.image!;
  }

  void _clearImage() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<File>(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text("ERROR:${snapshot.error}");
            } else {
              return Stack(children: [
                SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.file(snapshot.data!),
                ),
                Positioned(
                    left: 200,
                    top: 5,
                    child: IconButton(
                      icon: Icon(
                        Icons.close,
                      ),
                      color: Colors.white,
                      onPressed: () =>_clearImage()
                    ))
              ]);
            }
          },
        ),
      ),
    );
  }
}
