// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:lbm_fitness/Helper_Widget/colors.dart';

class Small_Btn extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnname;
  int? colorSelectedIndex;
  Color? color;

  Small_Btn({
    Key? key,
    required this.onPressed,
    required this.btnname,
    this.color, required colorSelectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
     //  padding: EdgeInsets.symmetric(horizontal: 20),
        //margin: EdgeInsets.zero,
        width: Get.width/2.5,
        height: 50,
        decoration: BoxDecoration(
          //border: Border.all(),
          borderRadius: BorderRadius.circular(10),
      //    if( currentIndex== colorSelectedIndex)
         color:color ?? AppColor.btncolor,
        ),
        child: Center(
          child: Text(
            btnname,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColor.black,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }
}
