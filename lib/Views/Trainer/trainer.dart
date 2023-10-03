import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lbm_fitness/Helper_Widget/Commonbutton.dart';

class Trainer extends StatefulWidget {
  @override
  State<Trainer> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<Trainer> {

 
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Trainer - Demoname1',
      'image': "assets/home/trainer1.png",
      'exp': "8",
    },
    {
      'title': 'Trainer - Demoname2',
      'image': 'assets/home/trainer1.png',
      'exp': "5",
    },
    {
      'title': 'Trainer - Demoname3',
      'image': 'assets/home/trainer1.png',
      'exp': "3",
    },
    {
      'title': 'Trainer - Demoname4',
      'image': 'assets/home/trainer1.png',
      'exp': "3",
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trainers Details'),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), // Back arrow icon
          onPressed: () {
            // Handle back button press here
            Navigator.of(context).pop(); // Navigate back
          },
        ),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
      ),
      body: Container(
        color: Colors.blueAccent,
        // height: 5000,
        child: GridView.builder(
          padding: EdgeInsets.only(top: Get.height / 20),
        
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
          
            childAspectRatio: 2/3,// Number of columns
            crossAxisSpacing: 10.0, // Space between columns
            mainAxisSpacing: 10.0, // Space between rows
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.pink,
             // height: 500,
              child: GestureDetector(
                onTap: () {
                  // Handle item tap here
                  print('Tapped ${items[index]['title']}');
                },
                child: Container(
                  // height: 500,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        items[index]['image'],
                        height:
                            Get.height / 5, // Adjust image height as needed
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        items[index]['title'],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        items[index]['exp'] + ' of experiance',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                          height: Get.width / 15,
                          child: CommmonBtn(
                              btnname: 'Available', onPressed: () {}))
                      //  , Text(
                      //     items[index]['exp'],// Convert 'exp' to string
                      //     style: TextStyle(
                      //       fontSize: 16.0,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
