import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularExcercise extends StatelessWidget {
  final String namePopular;
  final String imageUrl;
  final String difficulty;
  final String duration;

  PopularExcercise({
    this.namePopular = '',
    this.imageUrl = '',
    this.difficulty = '',
    this.duration = '',
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
                difficulty,
                style: GoogleFonts.montserrat(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 9,
              ),
              Text('|'),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.access_time,
                color: Colors.green,
              ),
              Text(duration),
            ],
          )
        ],
      ),
    );
  }
}
