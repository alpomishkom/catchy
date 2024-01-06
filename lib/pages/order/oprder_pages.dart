import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/elvvationButton_widgets.dart';
import '../widgets/textfoemfild_widget.dart';
import 'order_dedale_pages.dart';

class OrderPages extends StatelessWidget {
  const OrderPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sender Details",
          style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: const Color(0xFF191D31)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(36),
            TextFormFieldWidget(
              text: 'Micheal Sam',
              topText: 'Full Name',
              iconSvg: SvgPicture.asset(
                "assets/icons/peson.svg",
                color: const Color(0xFFF86A40),
              ),
            ),
            const Gap(20),
            TextFormFieldWidget(
              text: '+01 65841',
              topText: 'Phone Number',
              iconSvg: SvgPicture.asset(
                "assets/icons/coll.svg",
                color: const Color(0xFFF86A40),
              ),
            ),
            const Gap(20),
            TextFormFieldWidget(
              text: '1254 Kanata, Ottawa',
              topText: 'Full Name',
              iconSvg: SvgPicture.asset(
                "assets/icons/location.svg",
                color: const Color(0xFFF86A40),
              ),
            ),
            const Gap(20),
            Text(
              "Detail Location",
              style: GoogleFonts.average(
                color: const Color(0xFF191D31),
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            ),
            Gap(20),
            TextField(
              maxLength: 500,
              maxLines: 6,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText:
                    "Type detailed location to make it easier for us to pick up the package",
                hintStyle: TextStyle(
                  color: Color(0xFFA7A9B7),
                ),
              ),
            ),
            Gap(60),
            ElevationWigdgets(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetale(),
                  ),
                );
              },
              text: 'Continue',
              color: Color(0xFFF86A40),
            ),
          ],
        ),
      ),
    );
  }
}
