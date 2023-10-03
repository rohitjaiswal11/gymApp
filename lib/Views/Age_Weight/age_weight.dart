import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lbm_fitness/Helper_Widget/appbar.dart';
import 'package:lbm_fitness/Helper_Widget/Commonbutton.dart';
import 'package:lbm_fitness/Helper_Widget/textformfield.dart';
import 'package:lbm_fitness/Views/Gender/gender.dart';

class Age_Weight extends StatelessWidget {
  const Age_Weight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            //
            Container(
              // color: Colors.blueAccent,
              //  height: Get.height/5,
        
              margin:
                  EdgeInsets.fromLTRB(0, Get.height * 0.1, 0, Get.height / 25),
              child: const FitAppBar(),
            ),
            SizedBox(
              height: Get.height / 30,
            ),
            Container(
                width: Get.width,
                padding: EdgeInsets.all(10),
             
                child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Age",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
              height: Get.height / 100,
            ),
                      TxtBox(
                        hint: 'Enter Age',
                      ),   SizedBox(height: Get.height/40,),
                      Text(
                        'Weight',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ), SizedBox(
              height: Get.height / 100,
            ),
                      TxtBox(
                        hint: 'Enter Weight',
                      ), SizedBox(
              height: Get.height / 40,
            ),
                      Text(
                        'Height',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ), SizedBox(
              height: Get.height / 100,
            ),
                      TxtBox(
                        hint: 'Enter Height',
                      ), SizedBox(
              height: Get.height / 30,
            ),
                    ]))
          ]),
        )
        ,
        bottomSheet: 
    
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: Get.height/50),
          child: CommmonBtn(btnname: 'Continue', onPressed: (){Get.to(Gender());})),
        );
  }
}
