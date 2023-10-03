import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lbm_fitness/Views/Home/category.dart';
import 'package:lbm_fitness/Views/Trainer/trainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Colors.black,
        title: Text(
          'Hey, User',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        actions: [
          Image.asset('assets/home/ph_bell.png', height: 30),
          SizedBox(width: 10),
          CircleAvatar(backgroundImage: AssetImage('assets/home/backgroundimg.png'),radius: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200, // Adjust the height as needed
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/home/young.png',
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to the\nGym App',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Etiam eu turpis molestie',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [    Row(
                children: [
                Text(
                      'Workout Categories',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  Spacer(),
                  GestureDetector(onTap: (){
                    // Get.to(Trainer());
                  },
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
                   
                    SizedBox(height: 10),
                    Container(
                      height: 150, // Adjust the height as needed
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          // Replace with your workout categories here
                          CategoryItem('Weight Lifting Basics', 'assets/images/exercise.png'),
                          CategoryItem('Weight Lifting Basics', 'assets/images/exercise.png'),
                          CategoryItem('Weight Lifting Basics', 'assets/images/exercise.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/home/watch.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Trainer',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  GestureDetector(onTap: (){
                    Get.to(Trainer());
                  },
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 1.5 / 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemCount: 4, // Replace with the actual number of trainers
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext ctx, index) {
                  // Replace with trainer item widget
                  return Container(
                    height: Get.height / 12,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          alignment: Alignment.topCenter,
                          scale: 4,
                          imagePaths[index],
                          fit: BoxFit.contain,
                        ),
                        //   Container(
                        //   decoration: BoxDecoration(
        
                        //     borderRadius: BorderRadius.circular(20)
                        //   ),
                        //         child: Image.asset(
        
                        //         imagePaths[index],
                        //         fit: BoxFit.fill,
        
                        //   ),
        
                        // ),
                        Text(
                          trainername[index],
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
        
                        Text(
                          trainerexp[index],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Text(
                      'Diet Plans',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
        
        Container( padding: EdgeInsets.all(10),
          width: Get.width,
         // color: Colors.amber,
        height: Get.height/4,
          child: Image.asset('assets/home/dietchart.png',
          fit: BoxFit.fitWidth
          ),
        )
        
        
            ],
          ),
        ),
      ),
    );
  }
}

final List<String> imagePaths = [
  'assets/home/trainer1.png',
  'assets/home/trainer2.png',
  'assets/home/trainer3.png',
  'assets/home/trainer4.png',
  // Add more image paths here
];

final List<String> trainername = [
  ' Trainer - Demoname1',
  ' Trainer - Demoname2',
  ' Trainer - Demoname3',
  ' Trainer - Demoname4',
];

final List<String> trainerexp = [
  ' 5 years of Experience',
  ' 8 years of Experience',
  ' 3 years of Experience',
  ' 3 years of Experience',

];
