import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MealPlans extends StatelessWidget {
  final String namePopular;
  final String imageUrl;
  final String calories;

  MealPlans({
    this.namePopular = '',
    this.imageUrl = '',
    this.calories = '',
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl),
          SizedBox(
            height: 15,
          ),
          Text(
            namePopular,
            style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                calories,
                style: GoogleFonts.montserrat(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
