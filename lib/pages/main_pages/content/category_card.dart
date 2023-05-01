import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  final String nameCategoryCard;
  final String imageUrl;

  CategoryCard({this.nameCategoryCard = '', this.imageUrl = ''});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 19),
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              height: 70,
              width: 70,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              nameCategoryCard,
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
