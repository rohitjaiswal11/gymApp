import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lbm_fitness/Helper_Widget/appbar.dart';
import 'package:lbm_fitness/Helper_Widget/Commonbutton.dart';
import 'package:lbm_fitness/Helper_Widget/textformfield.dart';
import 'package:lbm_fitness/Helper_Widget/validtor.dart';
import 'package:lbm_fitness/Views/Gender/gender.dart';

class Age_Weight extends StatelessWidget {
  Age_Weight({super.key});
  final _formKey = GlobalKey<FormState>();
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

                margin: EdgeInsets.fromLTRB(
                    0, Get.height * 0.1, 0, Get.height / 25),
                child: const FitAppBar(),
              ),
              SizedBox(
                height: Get.height / 30,
              ),
              Container(
                  width: Get.width,
                  padding: EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: Get.height / 100,
                        ),
                        TxtBox(
                          validator: AppValidation.commonValidator,
                          hint: 'Enter Age',
                        ),
                        SizedBox(
                          height: Get.height / 40,
                        ),
                        Text(
                          'Weight',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: Get.height / 100,
                        ),
                        TxtBox(
                          validator: AppValidation.commonValidator,
                          hint: 'Enter Weight',
                        ),
                        SizedBox(
                          height: Get.height / 40,
                        ),
                        Text(
                          'Height',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: Get.height / 100,
                        ),
                        TxtBox(
                          validator: AppValidation.commonValidator,
                          hint: 'Enter Height',
                        ),
                        SizedBox(
                          height: Get.height / 30,
                        ),
                      ]))
            ]),
      ),
      bottomSheet: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: Get.height / 50),
          child: CommmonBtn(
              btnname: 'Continue',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 2, milliseconds: 500),
                      margin: EdgeInsets.only(bottom: 100),
                      content: Text(
                        'Processing Data',
                        textAlign: TextAlign.center,
                      ),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                  Get.to(Age_Weight());
                }
                Get.to(Gender());
              })),
    );
  }
}
