import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class FitAppBar extends StatelessWidget {
  const FitAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
           
            width: Get.width / 3,
            //height: Get.height/12,
           //  alignment: Alignment.center,
            decoration: BoxDecoration(
                //color: Colors.white
                ),
            child: Image.asset(
              'assets/images/fitness.png',
              //fit: BoxFit.contain,
              color: Colors.white,
            ));
    
  }
}

