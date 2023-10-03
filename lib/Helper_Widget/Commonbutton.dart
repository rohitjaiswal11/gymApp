import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lbm_fitness/Helper_Widget/colors.dart';

class CommmonBtn extends StatelessWidget {
  final String btnname;

  final VoidCallback onPressed;
  const CommmonBtn( {super.key, required this.btnname, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(


      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        width: Get.width,
        height: 45,
        decoration: BoxDecoration(
          //border: Border.all(),
          borderRadius: BorderRadius.circular(30),
          color:AppColor.btncolor,
        ),
        child: Center(
          child: Text(
            btnname,
            style: TextStyle(fontWeight: FontWeight.bold,
              color: AppColor.black,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
