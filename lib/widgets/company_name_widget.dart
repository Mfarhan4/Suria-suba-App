import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyName extends StatelessWidget {
  const CompanyName({Key? key,required this.nameColor,required this.nameSize,required this.titleSize,required this.titleColor}) : super(key: key);
 final Color nameColor;
 final double nameSize;
 final double titleSize;
 final Color titleColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text(
            "Suria",
            style: TextStyle(
                color: nameColor,
                fontSize: nameSize,
                fontWeight: FontWeight.bold,
                wordSpacing: 2,height: 1.0),
          ),
        ],
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,

        children:  [
          Text(
            " Sabah",
            style: TextStyle(
                color: nameColor,
                fontSize: nameSize,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,height: 0.75),
          ),
        ],
      ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "             Your First Stop Shopping Mall",
              style: GoogleFonts.allan(
                  color: titleColor,
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 1,height: 1.2),
            ),
          ],
        ),
    ],);
  }
}
