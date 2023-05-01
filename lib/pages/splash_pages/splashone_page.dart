import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_fitness/pages/splash_pages/splashtwo_page.dart';
import 'splash_page.dart';

class SplashOnePage extends StatefulWidget {
  const SplashOnePage({super.key});

  @override
  State<SplashOnePage> createState() => _SplashOnePageState();
}

class _SplashOnePageState extends State<SplashOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/splash2_group.png'),
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
                      MaterialPageRoute(
                          builder: (context) => const SplashTwoPage()),
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
