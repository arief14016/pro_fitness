import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdditionalExcercise extends StatelessWidget {
  final String nameExcercise;
  final String imageUrl;
  final String calories;
  final String durationExcercise;
  final String difficultyExcercise;

  AdditionalExcercise({
    this.nameExcercise = '',
    this.imageUrl = '',
    this.calories = '',
    this.durationExcercise = '',
    this.difficultyExcercise = '',
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                imageUrl,
                height: 130,
                width: 130,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameExcercise,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_fire_department,
                        color: Colors.green,
                        size: 17,
                      ),
                      Text(
                        calories,
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(' | '),
                      Icon(
                        Icons.access_alarm,
                        color: Colors.green,
                        size: 17,
                      ),
                      Text(
                        durationExcercise,
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    difficultyExcercise,
                    style: GoogleFonts.montserrat(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
