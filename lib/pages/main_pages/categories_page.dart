import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_fitness/pages/main_pages/main_page.dart';
import 'home_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ),
                      );
                    },
                    icon: Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Text(
                    'CATEGORIES',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Text('Search'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 37),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/category_yoga.png',
                        height: 120,
                        width: 120,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Text(
                        'Yoga',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Image.asset(
                        'assets/category_gym.png',
                        height: 120,
                        width: 120,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Text(
                        'Gym',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 37),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/category_cardio.png',
                        height: 120,
                        width: 120,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Text(
                        'Cardio',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Image.asset(
                        'assets/category_stretch.png',
                        height: 120,
                        width: 120,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Text(
                        'Stretch',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 37),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/category_fullbody.png',
                        height: 120,
                        width: 120,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Text(
                        'Full Body',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Image.asset(
                        'assets/category_legs.png',
                        height: 120,
                        width: 120,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Text(
                        'Legs',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
