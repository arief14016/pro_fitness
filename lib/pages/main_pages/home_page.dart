import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_fitness/pages/main_pages/categories_page.dart';
import 'package:pro_fitness/pages/main_pages/content/additional_exercise.dart';
import 'package:pro_fitness/pages/main_pages/content/category_card.dart';
import 'package:pro_fitness/pages/main_pages/content/header_card.dart';
import 'package:pro_fitness/pages/main_pages/content/meal_plans.dart';
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
                  InkWell(
                    child: Text(
                      'See All',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CategoriesPage(),
                        ),
                      );
                    },
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
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, right: 21),
              child: Row(
                children: [
                  Text(
                    'MEAL PLANS',
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
            Padding(
              padding: const EdgeInsets.only(left: 29, right: 29),
              child: MealPlans(
                namePopular: 'Greek salad with lettuce, green onion,',
                imageUrl: 'assets/meal_plan1.png',
                calories: '150 kcal',
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29, right: 29),
              child: MealPlans(
                namePopular: 'Salad of fresh vegetables',
                imageUrl: 'assets/meal_plan2.png',
                calories: '270 kcal',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, right: 21),
              child: Row(
                children: [
                  Text(
                    'ADDITIONAL EXCERCISE',
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
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: AdditionalExcercise(
                nameExcercise: 'Exercises with Jumping Rope',
                imageUrl: 'assets/Additional_Exercise2.png',
                calories: '110 kcal',
                durationExcercise: '10 min',
                difficultyExcercise: 'Beginner',
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: AdditionalExcercise(
                nameExcercise: 'Exercises with Holding Jumping \nRope',
                imageUrl: 'assets/Additional_Exercise2.png',
                calories: '134 kcal',
                durationExcercise: '8 min',
                difficultyExcercise: 'Beginner',
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: AdditionalExcercise(
                nameExcercise: 'Exercises with Sitting Dumbbells',
                imageUrl: 'assets/Additional_Exercise2.png',
                calories: '135 kcal',
                durationExcercise: '5 min',
                difficultyExcercise: 'Beginner',
              ),
            ),
          ],
        ),
      )),
    );
  }
}
