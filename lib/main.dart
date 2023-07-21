import 'package:flutter/material.dart';
import 'package:listviewbuild/resultpage.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListViewDemo(),
  ));
}
class ImageData {
  final String imagePath;
  final String name;
  final String description;

  ImageData({
    required this.imagePath,
    required this.name,
    required this.description,
  });
}



class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<ImageData> imageDataList = [
      ImageData(
        imagePath: "images/sea1.webp",
        name: "Sea 1",
        description: "ocean view for sea.",
      ),
      ImageData(
        imagePath: "images/sea2.jpg",
        name: "Sea 2",
        description: "ocean view for sea.",
      ),
      ImageData(
        imagePath: "images/sea3.jpg",
        name: "Sea 3",
        description: "ocean view for sea.",
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Un Named Routes",style: TextStyle(
        fontSize: 25,color: Colors.black
      ),),),
        body:


        ListView.builder(
            itemCount: imageDataList.length,

            itemBuilder: (BuildContext context, int index) {
              final imageData = imageDataList[index];
              return ListTile(
                leading: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,MaterialPageRoute(builder: (context)=>
                    result(imageData:imageDataList[index],))
                    );
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(imageData.imagePath),
                  ),
                ),
                title: Text(imageData.name),
                subtitle: Text(imageData.description),
              );
            }
        )
    );
  }
}



