import 'package:flutter/material.dart';
import 'package:lbm_fitness/Helper_Widget/colors.dart';
import 'package:lbm_fitness/Views/Home/home.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:lbm_fitness/Views/Profile/Profile.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({super.key});

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  int index = 0;

  List<Widget> _widgetScreen = [
    HomePage(),
    Text('ggg'),
    Text('ffff'),

    //Text('ffff'),
    Profile()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetScreen[index],
        ),
        bottomNavigationBar: CurvedNavigationBar(
            onTap: (newIndex) {
              setState(() {
                index = newIndex;
              });
            },
            color: Colors.grey.shade900,
            buttonBackgroundColor: AppColor.btncolor,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            backgroundColor: Colors.transparent,
            //fixedColor: Colors.amber,
            //    selectedItemColor: Colors.green,
            //  unselectedItemColor: Colors.white,
            //     type: BottomNavigationBarType.fixed,
            items: [
              CurvedNavigationBarItem(
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: 'Home'),
              CurvedNavigationBarItem(
                  child: Icon(Icons.schedule, color: Colors.white),
                  label: 'Schedule'),
              CurvedNavigationBarItem(
                  child: Icon(Icons.menu, color: Colors.white), label: 'Diet'),
              CurvedNavigationBarItem(
                  child: Icon(Icons.person, color: Colors.white),
                  label: 'Profile'),
            ]));
  }
}
