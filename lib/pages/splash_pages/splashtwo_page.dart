import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_fitness/pages/main_pages/main_page.dart';
import 'splashone_page.dart';

class SplashTwoPage extends StatefulWidget {
  const SplashTwoPage({super.key});

  @override
  State<SplashTwoPage> createState() => _SplashTwoPageState();
}

class _SplashTwoPageState extends State<SplashTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/splash3_group.png'),
              fit: BoxFit.fill,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 751, left: 28, right: 27),
            child: Row(
              children: [
                Text(
                  'SKIP',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                    );
                  },
                  child: Text(
                    'NEXT',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
