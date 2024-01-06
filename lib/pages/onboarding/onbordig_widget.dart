
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PagesViewWidgats extends StatelessWidget {
  final String text;
  final String subtxet;
  final ImageProvider image;

  const PagesViewWidgats({
    super.key,
    required this.text,
    required this.subtxet,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: image,
        ),
        const Gap(20),
        Column(
          children: [
            Text(
              "Cash on Delivery or E-payment",
              style: GoogleFonts.average(
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Gap(10),
            Text(
              "Our delivery will ensure your items are delivered \n right to the door steps",
              style: GoogleFonts.average(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFFA7A9B7)),
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    );
  }
}