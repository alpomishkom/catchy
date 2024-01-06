import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/textfoemfild_widget.dart';

class Insurance extends StatelessWidget {
  const Insurance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help Center",
          style: GoogleFonts.averageSans(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Color(0xFF191D31),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(30),
            TextFormFieldWidget(
              text: 'Tap to search faq',
              topText: '',
              iconSvg: SvgPicture.asset("assets/icons/serch.svg"),
            ),
            Gap(30),
            Text(
              "See Other Category",
              style: GoogleFonts.averageSans(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color(0xFF191D31),
              ),
            ),
            Gap(20),
            Container(
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: Colors.black12)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 14,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/insure.svg",
                          color: Color(0xFFFD683D),
                        ),
                        Gap(20),
                        Text("Insurance")
                      ],
                    ),
                    Gap(16),
                    Divider(),
                    Gap(16),
                    Text("Tracky insurance terms"),
                    Gap(16),
                    Divider(),
                    Gap(16),
                    Text("Tracky insurance terms")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
