import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:testjob/pages/home.dart';
import 'package:testjob/widget/myButton.dart';


class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  File? _image;
  Future GalleryImage() async {
    var image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 150,
      maxWidth: 150,
      imageQuality: 1,
    );
    setState(() {
      _image = image as File?;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black45,
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          backgroundColor: Color.fromARGB(255, 184, 241, 214),
          shadowColor: Colors.transparent,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 184, 241, 214),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  height: 150,
                  width: 150,
                  color: Colors.black26,
                  child: _image != null
                      ? Image.file(_image!, fit: BoxFit.cover)
                      : Center(child: Text('Please select an image')),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.black26,
                  onPressed: () {
                    GalleryImage();
                  },
                  child: Icon(
                    Icons.image,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text("Product name"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text("Product description"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          label: Text("White small price"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      flex: 5,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          label: Text("White large price"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      flex: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          label: Text("Black small price"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      flex: 5,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          label: Text("Black large price"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      flex: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 55,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: MyButton(
                          Button_name: "Add",
                        ),
                        flex: 5,
                      ),
                      Expanded(
                        child: MyButton(
                          Button_name: "Discard",
                        ),
                        flex: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
