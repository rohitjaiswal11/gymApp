import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lbm_fitness/Helper_Widget/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // bool isExpanded = false;

  // void toggleExpansion() {
  //   setState(() {
  //     isExpanded = !isExpanded;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: const BackButton(
            color: Colors.white,
          ),
          title: Text(
            "Profile",
          ),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
                'assets/home/backgroundimg.png'), // Replace with your background image path
            fit: BoxFit.cover,
          )),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height / 50,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/images/avtar.png',
                ),
              ),
              SizedBox(
                height: Get.height / 50,
              ),
              Text(
                'Demonname',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height / 50,
              ),
              Container(
                height: Get.height / 17,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: AppColor.btncolor)
                    //  border: BorderSide(width: 1, color: AppColor.btncolor)
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          '195 cm',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          'Height',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                    VerticalDivider(
                      endIndent: 10,
                      indent: 10,
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Column(
                      children: [
                        Text(
                          '75 Kg',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          'weight',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                    VerticalDivider(
                      indent: 10,
                      endIndent: 10,
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Column(
                      children: [
                        Text(
                          '24 Years',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          'Age',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height / 15,
              ),
              // GestureDetector(
              //   onTap: toggleExpansion, // Toggle expansion on tap
              //   child: AnimatedContainer(
              //     duration: Duration(milliseconds: 300),
              //     width: 200.0,
              //     height: isExpanded ? 200.0 : 100.0, // Change height when expanded
              //     color: Colors.blue,
              //     alignment: Alignment.center,
              //     child: Text(
              //       isExpanded ? 'Expanded' : 'Tap to Expand',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 20.0,
              //       ),
              //     ),
              //   ),
              // )

              Container(
                height: Get.height/2.3,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: Get.height / 17,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: AppColor.btncolor)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child:
                                  Image.asset('assets/profile/profile_icon.png'),
                            ),
                            Text("  Personal Details"),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_circle_right_rounded))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: Get.height / 17,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: AppColor.btncolor)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child:
                                  Image.asset('assets/profile/achievement.png'),
                            ),
                            Text("  Achievement"),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_circle_right_rounded))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: Get.height / 17,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: AppColor.btncolor)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/profile/activity.png'),
                            ),
                            Text("  Activity History"),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_circle_right_rounded))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: Get.height / 17,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: AppColor.btncolor)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/profile/workout.png'),
                            ),
                            Text("  Workout Progress"),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_circle_right_rounded))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: Get.height / 17,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: AppColor.btncolor)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/profile/notifi.png'),
                            ),
                            Text("  Pop-Ups Notification"),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_circle_right_rounded))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: Get.height / 17,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: AppColor.btncolor)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/profile/logout.png'),
                            ),
                            Text("    Logout"),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_circle_right_rounded))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: Get.height / 50,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
