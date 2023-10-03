import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lbm_fitness/Helper_Widget/appbar.dart';
import 'package:lbm_fitness/Helper_Widget/Commonbutton.dart';
import 'package:lbm_fitness/Helper_Widget/textformfield.dart';
import 'package:lbm_fitness/Helper_Widget/validtor.dart';
import 'package:lbm_fitness/Views/Email/emailConst.dart';
import 'package:lbm_fitness/Views/OTP/otp.dart';

class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           // 
            Container( //color: Colors.blueAccent,
            //  height: Get.height/5,
              
              margin: EdgeInsets.fromLTRB(0, Get.height*0.1, 0, Get.height / 25),
              child: const FitAppBar(),
            ),
         SizedBox(height: Get.height/13,),
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
                        Email_Const.enteryouremail,
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.end,
                      ),
                      SizedBox(
                        height: Get.height / 100,
                      ),
                      Text(
                        Email_Const.emailsubt,
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                      ),
      SizedBox(height: Get.height/20,)
      ,                       Text(Email_Const.emailadd),SizedBox(height: Get.height/100,),
                      TxtBox(hint: 'Enter Email', 
                      
                      
                      
                      
                      
                       ),
                      SizedBox(height: Get.height/20,),
                      CommmonBtn(btnname: 'Send OTP', onPressed: (){Get.to(OTP());}), SizedBox(height: Get.height/20,),
      
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
