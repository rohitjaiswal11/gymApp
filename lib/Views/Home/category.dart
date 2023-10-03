
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String imagePath;

  CategoryItem(this.title, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Image.asset(imagePath, height: 100, width: double.infinity, fit: BoxFit.cover),
          //SizedBox(height: 50),
          Text(
            title,
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}