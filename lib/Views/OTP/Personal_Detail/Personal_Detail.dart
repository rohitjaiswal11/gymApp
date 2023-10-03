import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lbm_fitness/Helper_Widget/Commonbutton.dart';
import 'package:lbm_fitness/Helper_Widget/textformfield.dart';

class Pesonal_Detail extends StatelessWidget {
  const Pesonal_Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: const BackButton(
          color: Colors.white,
        ),
        title: Text("Personal Details",),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, Get.height / 15, 10, 0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(fontSize: 16),
              ), SizedBox(height: Get.height/100,),
              TxtBox(hint: 'Demonname',),
               SizedBox(height: Get.height/50,),  Text(
                'Email',
                style: TextStyle(fontSize: 16),
              ), SizedBox(height: Get.height/100,),
              TxtBox(hint: 'demonname@gmail.com',),
               SizedBox(height: Get.height/50,),  Text(
                'Date of Birth',
                style: TextStyle(fontSize: 16),
              ), SizedBox(height: Get.height/100,),
              TxtBox(hint: '01-01-1999',),
               SizedBox(height: Get.height/50,),  Text(
                'Weight',
                style: TextStyle(fontSize: 16),
              ), SizedBox(height: Get.height/100,),
              TxtBox(hint: '75Kg',),
               SizedBox(height: Get.height/50,),  Text(
                'Height',
                style: TextStyle(fontSize: 16),
              ), SizedBox(height: Get.height/100,),
              TxtBox(hint: '195cm',),
               SizedBox(height: Get.height/50,),


            ],
          ),
        ),


      ),

      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        child: CommmonBtn(btnname: 'Save', onPressed: (){}),
      ),
    );
  }
}
