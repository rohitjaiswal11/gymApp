import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lbm_fitness/Helper_Widget/appbar.dart';
import 'package:lbm_fitness/Helper_Widget/Commonbutton.dart';
import 'package:lbm_fitness/Helper_Widget/colors.dart';
import 'package:lbm_fitness/Helper_Widget/textformfield.dart';
import 'package:lbm_fitness/Helper_Widget/validtor.dart';
import 'package:lbm_fitness/Views/Age_Weight/age_weight.dart';
import 'package:lbm_fitness/Helper_Widget/Create_Account/create_account.dart';
import 'package:lbm_fitness/Views/Login/loginConst.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, Get.height / 10, 0, Get.height / 20),
            child: const FitAppBar(),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: Get.width,
            child: Card(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: Colors.blue, width: 2.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height / 30,
                      ),
                      Text(
                        loginConst.welcome,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.end,
                      ),
                      SizedBox(
                        height: Get.height / 100,
                      ),
                      Text(
                        loginConst.welcomesubt,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: Get.height / 30,
                      ),
                      Text(loginConst.emailadd),
                      SizedBox(
                        height: Get.height / 100,
                      ),
                      TxtBox(
                        hint: 'Enter Email',
                    
                      //   validator: (value) {
                      //  String nal=AppValidation.validateEmail(value);
                      //  if(nal.toString()=="null"){
                      //   return null;
                      //  }
                      //  return nal;
                      
                      
                      //   },
                      validator:AppValidation.validateEmail,
                      ),
                      SizedBox(
                        height: Get.height / 50,
                      ),
                      Text(loginConst.password),
                      SizedBox(
                        height: Get.height / 100,
                      ),
                      TxtBox(
                        hint: 'Enter Password',
                        //obscureText: true,
                        validator:  AppValidation.validatePassword,
                          // if (value == null || value.isEmpty) {
                          //   return 'Please enter your password';
                          // } else if (value.length < 6) {
                          //   return 'Password must be at least 6 characters long';
                          // }
                          // return null;
                        
                        obscureText: true,
                      ),
                      SizedBox(
                        height: Get.height / 100,
                      ),
                      Container(
                        width: Get.width,
                        child: Text(
                          loginConst.forgetpass,
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      SizedBox(
                        height: Get.height / 30,
                      ),
                      CommmonBtn(
                        btnname: 'Login to your account',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(duration: Duration(seconds: 2,milliseconds: 500),
                                margin: EdgeInsets.only(bottom: 100),
                                content: Text('Processing Data',textAlign: TextAlign.center,),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                            Get.to(Age_Weight());
                          }
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            loginConst.donthave,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(Create_Account());
                            },
                            child: Text(
                              loginConst.signup,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: AppColor.btncolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height / 70,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
