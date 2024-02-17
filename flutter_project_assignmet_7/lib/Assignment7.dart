
import 'package:flutter/material.dart';


class Assignment7 extends StatefulWidget{ 
  const Assignment7({super.key});

  @override
  State<Assignment7> createState() => _Assignment7State();

}

class _Assignment7State extends State<Assignment7>{
  int? selectIndex = 0;

  final List<String> ImageList = ["https://media.istockphoto.com/id/1217787639/photo/extreme-snowboarder-in-massive-big-air-jump-in-snowy-mountains.jpg?s=1024x1024&w=is&k=20&c=VzPOiKo0VQg4cc0cEghdDYuFizoIBvixrEdOWI_GpyU=",
  "https://media.istockphoto.com/id/1503943375/photo/vietnamese-girl-in-traditional-white-ao-dai-dress-with-incense-drying-outdoors-in-hanoi.jpg?s=1024x1024&w=is&k=20&c=Qgbc0ZUD0a17-L7VJqYvzi0jfFxcchgm857On_B3ob0=",
  "https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg"];

  // ignore: non_constant_identifier_names
  void showNextImage() {
    setState(() {
      selectIndex = selectIndex! + 1 ;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Images"),
      ),
    body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [Image.network(ImageList[selectIndex!],
    width: 300,
    height: 300,),
    const SizedBox(height: 20,),
    ElevatedButton(
      onPressed: showNextImage,
      child: const Text("next",),
    ),
    const SizedBox(height: 20,),
    ElevatedButton(
      onPressed: (){
        setState(() {
          selectIndex = 0;
        });
      },
    child: const Text("reset",),
    ),
    ],
    ),
    ),
    );
  }
}