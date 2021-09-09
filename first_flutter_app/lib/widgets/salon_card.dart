import 'package:flutter/material.dart';
import 'package:first_flutter_app/models/salons.dart';
import 'package:first_flutter_app/constants.dart';

class SalonCard extends StatelessWidget {
  final Salons salons;
  SalonCard({required this.salons});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      margin: EdgeInsets.only(left: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              image: DecorationImage(
                image: AssetImage(salons.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 140.0,
                child: Text(
                  salons.name,
                  overflow: TextOverflow.ellipsis,
                  style: kTitleItem,
                ),
              ),
              Spacer(),
              Icon(
                Icons.star,
                color: kYellow,
                size: 15.0,
              )
            ],
          ),
          Text(
            salons.address,
            overflow: TextOverflow.ellipsis,
            style: kSubtitleItem,
          ),
        ],
      ),
    );
  }
}
