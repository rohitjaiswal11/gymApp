import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lbm_fitness/Helper_Widget/appbar.dart';
import 'package:lbm_fitness/Helper_Widget/Commonbutton.dart';
import 'package:lbm_fitness/Views/Login/login.dart';
import 'package:lbm_fitness/Views/Splash/splashConst.dart';

class SplashSceeen extends StatelessWidget {
  const SplashSceeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          
        //  padding: EdgeInsets.only(top:500),
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage("assets/images/back.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  //color: Colors.blueAccent,
                  //  height: Get.height/5,
                  
                  margin: EdgeInsets.fromLTRB(
                      0, Get.height * 0.1, 0, Get.height / 25),
                  child: FitAppBar(),
                ),
                SizedBox(
                  height: Get.height / 13,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          color: Colors.transparent,
          height: Get.height / 5,
          width: Get.width,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.fromLTRB(0, 0, Get.width / 3, Get.height / 100),
                child: Container(
                  height: Get.height / 30,
                  width: Get.width * 0.7,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    //color: Colors.red,
                    image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage("assets/images/gym.png"),
                      fit: BoxFit.fill,
                    ),
                  ),

                  // ,
                  // CommmonBtn(btnname: 'Continue', onPressed: () {}
                ),
              ),
              Text(
              Splash_Count.textsubt,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CommmonBtn(btnname: 'Continue', onPressed: () {Get.to(Login());}),
              ),
              SizedBox(
                height: Get.height / 100,
              )
            ],
          ),
//color: Colors.cyan,),
        )
        
        );
  }
}
