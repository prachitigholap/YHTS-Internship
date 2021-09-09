import 'dart:ui';

import 'package:first_flutter_app/constants.dart';
import 'package:first_flutter_app/models/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  CategoryCard({required this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      //margin: EdgeInsets.only(left: 0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 35.0,
            backgroundColor: category.color,
            child: Text(
              category.title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
