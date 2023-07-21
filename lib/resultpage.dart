
import 'package:flutter/material.dart';
import 'package:listviewbuild/main.dart';

class result extends StatelessWidget {

  final ImageData imageData;
   const result({Key? key, required this.imageData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(imageData.name),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image:
              AssetImage(imageData.imagePath))
            ),
          ),
          Text(imageData.description),
        ],
      ),
    );
  }
}
