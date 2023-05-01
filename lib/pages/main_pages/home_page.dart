import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_fitness/pages/main_pages/content/category_card.dart';
import 'package:pro_fitness/pages/main_pages/content/header_card.dart';
import 'package:pro_fitness/pages/main_pages/content/popular_excercise.dart';
import 'package:pro_fitness/pages/main_pages/content/select_goal.dart';
import 'main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderCardPage(
              nameUser: 'Sophia',
              imageUrl: 'assets/ellipse.png',
              saying: 'Hello, Good Morning',
            ),
            Image.asset('assets/home_banner_group.png'),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: SelectGoal(),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, right: 21),
              child: Row(
                children: [
                  Text(
                    'CATEGORY',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryCard(
                    nameCategoryCard: 'Yoga',
                    imageUrl: 'assets/category_yoga.png',
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  CategoryCard(
                    nameCategoryCard: 'Gym',
                    imageUrl: 'assets/category_gym.png',
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  CategoryCard(
                    nameCategoryCard: 'Cardio',
                    imageUrl: 'assets/category_cardio.png',
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  CategoryCard(
                    nameCategoryCard: 'Stretch',
                    imageUrl: 'assets/category_stretch.png',
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  CategoryCard(
                    nameCategoryCard: 'Full Body',
                    imageUrl: 'assets/category_fullbody.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, right: 21),
              child: Row(
                children: [
                  Text(
                    'POPULAR EXCERCISE',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29, right: 29),
              child: PopularExcercise(
                namePopular: 'Athlete Practicing Monochrome',
                imageUrl: 'assets/popular_excercise1.png',
                difficulty: 'Beginner',
                duration: '50 min',
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29, right: 29),
              child: PopularExcercise(
                namePopular: 'Full Shot Woman Stretching Arm',
                imageUrl: 'assets/popular_excercise2.png',
                difficulty: 'Beginner',
                duration: '30 min',
              ),
            ),
          ],
        ),
      )),
    );
  }
}
