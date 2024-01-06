import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'balans.dart';

class WallidPages extends StatelessWidget {
  const WallidPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(30),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BalansPages()));
              },
              child: Image.asset("assets/images/Balance Banner (1).png"),
            ),
            Gap(32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method",
                  style: GoogleFonts.averageSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF191D31)),
                ),
                Icon(
                  Icons.add,
                  color: Color(0xFFFD683D),
                )
              ],
            ),
            Gap(20),
            Caar_widget(
              assetsSvg: SvgPicture.asset("assets/icons/cisa_card.svg"),
              text: 'Mastercard',
            ),
            Gap(30),
            Text(
              "Transaction History",
              style: GoogleFonts.averageSans(
                fontWeight: FontWeight.w800,
                fontSize: 18,
                color: Color(0xFF191D31),
              ),
            ),
            Gap(20),
            Caar_widget(
              assetsSvg: SvgPicture.asset(
                "assets/icons/box.svg",
                color: Color(0xFFFD683D),
              ),
              text: 'Drop Off Payment',
              traling: Text(r"$25.5"),
            ),
            Gap(20),
            Caar_widget(
              assetsSvg: SvgPicture.asset(
                "assets/icons/card_scrin.svg",
                color: Color(0xFFFD683D),
              ),
              text: 'Cargo Shipping',
              traling: Text(r"$29.5"),
            ),
            Gap(20),
            Caar_widget(
              assetsSvg: SvgPicture.asset(
                "assets/icons/box.svg",
                color: Color(0xFFFD683D),
              ),
              text: 'Express Shipping',
              traling: Text(r"$50.6"),
            ),
            Gap(20),
            Caar_widget(
              assetsSvg: SvgPicture.asset(
                "assets/icons/box.svg",
                color: Color(0xFFFD683D),
              ),
              text: 'Drop Off Payment',
              traling: Text(r"$16,8"),
            ),
          ],
        ),
      ),
    );
  }
}

class Caar_widget extends StatelessWidget {
  final SvgPicture assetsSvg;
  final String text;
  final Widget? traling;

  const Caar_widget({
    super.key,
    required this.assetsSvg,
    required this.text,
    this.traling,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Color(0xFF191D31)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          text,
          style: GoogleFonts.averageSans(
              fontWeight: FontWeight.w500, fontSize: 16),
        ),
        subtitle: Text(
          "6895 3526 8456 ****",
          style: GoogleFonts.averageSans(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFFA7A9B7)),
        ),
        trailing: traling,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFFF2F4F9),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: assetsSvg,
            ),
          ),
        ),
      ),
    );
  }
}
