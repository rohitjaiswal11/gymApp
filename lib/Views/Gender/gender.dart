import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lbm_fitness/Helper_Widget/appbar.dart';
import 'package:lbm_fitness/Helper_Widget/bottom_nav.dart';
import 'package:lbm_fitness/Helper_Widget/colors.dart';
import 'package:lbm_fitness/Helper_Widget/smallbtn.dart';
import 'package:lbm_fitness/Views/Gender/genderConst.dart';
import 'package:lbm_fitness/Views/Home/home.dart';

class Gender extends StatefulWidget {
   Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
int colorSelectedIndex = 0;

int currentIndex = 0;


  void _onButtonTap(int index) {
    setState(() {
   //


   
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
     padding: const EdgeInsets.symmetric(horizontal:30.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      //
                      Center(
              child: Container(
                //color: Colors.blueAccent,
                //  height: Get.height/5,
                // width: Get.width,
                margin:
                    EdgeInsets.fromLTRB(0, Get.height * 0.1, 0, Get.height / 25),
                child: const FitAppBar(),
              ),
                      ),
                      // SizedBox(
                      //   height: Get.height / 13,
                      // ),
                
                      Container(
              // color: Colors.red,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Gender_Const.gender,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: Get.height / 50,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                  
                  Small_Btn(onPressed: (){}, btnname: Gender_Const.male, colorSelectedIndex:currentIndex,
                  ),
                  Small_Btn(onPressed: (){}, btnname: Gender_Const.female, colorSelectedIndex:currentIndex,),
                  
                  
                    ],
                  ),SizedBox( height: Get.height/25,)
                
                ],
              ),
                      ), Container(
              // color: Colors.red,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("currentIndex "+currentIndex.toString()),
                  Text(Gender_Const.goal
                    ,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: Get.height / 50,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                  
                  Small_Btn(
                    onPressed: (){
                    currentIndex =0;
                  
                    setState(() {
                      
                    });
                  }, 
                  btnname: 'Gain Weight',colorSelectedIndex:currentIndex,color:currentIndex==0?AppColor.btncolor: Colors.grey,),

                  Small_Btn(onPressed: (){
                    currentIndex =2;
               
                    setState(() {
                      
                    });
                  }, btnname: 'Loose Weight',colorSelectedIndex:currentIndex,color:currentIndex==2?AppColor.btncolor: Colors.grey,),
                  
                  
                    ],
                  ),SizedBox( height: Get.height/40,),
                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                  
                  Small_Btn(onPressed: (){ 
                    currentIndex =3;
                       setState(() {
                      
                    });
                    //_onButtonTap();
                  // Get.to();
                  
                  },
                   btnname: 'Get Fitter',colorSelectedIndex:currentIndex,color:currentIndex==3?AppColor.btncolor: Colors.grey,),




                  Small_Btn(onPressed: (){}, btnname: 'Gain more Flexible',colorSelectedIndex:currentIndex,),
                  
                  
                    ],
                  ),SizedBox( height: Get.height/40,),
                  Small_Btn(onPressed:(){} , btnname: 'Learn the Basic',colorSelectedIndex:currentIndex,),
                SizedBox( height: Get.height/25,)
                ],
              ),
                      ),Container(
              // color: Colors.red,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Activity Level',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: Get.height / 50,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                  
                  Small_Btn(onPressed: (){}, btnname: 'Rookie',colorSelectedIndex:currentIndex,),
                  Small_Btn(onPressed: (){}, btnname: 'Beginner',colorSelectedIndex:currentIndex,),
                  
                  
                    ],
                  ),SizedBox( height: Get.height/40,),
                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                  
                  Small_Btn(onPressed: (){}, btnname: 'Intermediate',colorSelectedIndex:currentIndex,),
                  Small_Btn(onPressed: (){}, btnname: 'Advance',colorSelectedIndex:currentIndex,),
                  
                  
                    ],
                  ),SizedBox( height: Get.height/40,),
                  Small_Btn(onPressed:(){
                    Get.to(Bottom_Nav());
                  } , btnname: 'True Beast',colorSelectedIndex:currentIndex,)
                ,
                  SizedBox( height: Get.height/25,)
                
                ],
              ),
                      )
                    ]),
            )));
  }
}
