import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lbm_fitness/Helper_Widget/appbar.dart';
import 'package:lbm_fitness/Helper_Widget/Commonbutton.dart';
import 'package:lbm_fitness/Helper_Widget/textformfield.dart';
import 'package:lbm_fitness/Views/Age_Weight/age_weight.dart';
import 'package:lbm_fitness/Views/OTP/otp_const.dart';
import 'package:lbm_fitness/Views/ResetPassword/Reset_Const.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

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
              height: Get.height / 13,
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    width: Get.width,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height / 30,
                          ),
                          Text(
                            Reset_Const.resetpass,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.end,
                          ),
                          SizedBox(
                            height: Get.height / 100,
                          ),
                          Text(
                          Reset_Const.resetsubt,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: Get.height / 30,
                          ),
                          Text(Reset_Const.password,  style:
                            TextStyle( fontWeight: FontWeight.w500),),
                          SizedBox(height: Get.height/100,),
                      TxtBox(hint: Reset_Const.enterpasword,),
                      SizedBox(height: Get.height/30,),
        
                          Text(Reset_Const.confpassword,   style:
                            TextStyle( fontWeight: FontWeight.w500),),
                          SizedBox(height: Get.height/100,),
                      TxtBox(hint: Reset_Const.enterpasword,),
                   SizedBox(height: Get.height/20,),
                   CommmonBtn(btnname: 'Create an account', onPressed:(){
        
        
                  
                   
                   }), SizedBox(height: Get.height/30,)
                        ])))
          ]),
        ));
  }
}
