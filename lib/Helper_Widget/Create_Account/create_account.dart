import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:lbm_fitness/Helper_Widget/appbar.dart';
import 'package:lbm_fitness/Helper_Widget/Commonbutton.dart';
import 'package:lbm_fitness/Helper_Widget/colors.dart';
import 'package:lbm_fitness/Helper_Widget/textformfield.dart';
import 'package:lbm_fitness/Helper_Widget/Create_Account/create_accountConst.dart';
import 'package:lbm_fitness/Views/Email/email.dart';

class Create_Account extends StatelessWidget {
Create_Account({super.key});
final _formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
          //SizedBox(height: Get.height/15,),
          Container(
            margin: EdgeInsets.fromLTRB(0, Get.height / 10, 0, Get.height / 25),
            child: const FitAppBar(),
          ),
        
          // SizedBox(height: Get.height/20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: Get.height * 0.78,
              decoration: BoxDecoration(
               // color: Colors.amber,
        
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height / 30,
                      ),
                      Text(
                        Create_AccountConst.welcome,
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.end,
                      ),
                      SizedBox(
                        height: Get.height / 100,
                      ),
                      Text(
                        Create_AccountConst.welcomesubt,
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: Get.height / 30,
                      ),
                      Text(Create_AccountConst.emailadd),
                      SizedBox(
                        height: Get.height / 100,
                      ),
                      TxtBox(hint: 'Enter Email'),
                      SizedBox(
                        height: Get.height / 50,
                      ),
                      Text(Create_AccountConst.phnumber),
                      SizedBox(
                        height: Get.height / 100,
                      ),
                      TxtBox(hint: 'Enter Phone'),
                      SizedBox(
                        height: Get.height / 50,
                      ),
                      Text(Create_AccountConst.password),
                      SizedBox(
                        height: Get.height / 100,
                      ),
                      TxtBox(hint: 'Enter Password'),
                      SizedBox(
                        height: Get.height / 50,
                      ),
                      Text(Create_AccountConst.confirmpassword),
                      SizedBox(
                        height: Get.height / 100,
                      ),
                      TxtBox(hint: 'Enter Password'),
                      SizedBox(
                        height: Get.height / 25,
                      ),
                      CommmonBtn(btnname: 'Create an account', onPressed: () {
                        
                              if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(duration: Duration(seconds: 2,milliseconds: 500),
                                margin: EdgeInsets.only(bottom: 100),
                                content: Text('Processing Data',textAlign: TextAlign.center,),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                        

                        Get.to( Email());
                        
                              }
                        
                        }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Create_AccountConst.already,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                Create_AccountConst.login,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: AppColor.btncolor),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
              ],
            ),
        ));
  }
}
