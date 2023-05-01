import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderCardPage extends StatelessWidget {
  final String nameUser;
  final String imageUrl;
  final String saying;

  HeaderCardPage({this.nameUser = '', this.imageUrl = '', this.saying = ''});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 190,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/header_group.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 5),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    imageUrl,
                    height: 50,
                    width: 50,
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/icon_notification.png',
                    height: 30,
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    saying,
                    style: GoogleFonts.montserrat(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    nameUser,
                    style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 26,
              ),
              Text('search')
            ],
          ),
        ),
      ),
    );
  }
}
