import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:more_from_below/pages/wallit/wallid_pages.dart';
import '../bottomnavigatorbar/bottomnavigationbar_pages.dart';
import '../widgets/elvvationButton_widgets.dart';
import '../widgets/textfoemfild_widget.dart';

class BalansPages extends StatelessWidget {
  const BalansPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Top Up",
          style: GoogleFonts.averageSans(
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(30),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.36,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFDFE2EB),
                                ),
                              ),
                            ),
                            Gap(20),
                            Caar_widget(
                              assetsSvg: SvgPicture.asset(
                                  "assets/icons/cisa_card.svg"),
                              text: 'Mastercard',
                              traling: SvgPicture.asset(
                                "assets/icons/du.svg",
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Colors.black45),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.add_circle_outline,
                                        color: Color(0xFFFD683D),
                                      ),
                                      Gap(10),
                                      Text(
                                        "Add New Payment Method",
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Gap(60),
                            ElevationWigdgets(
                              onPressed: () {},
                              text: 'Confirm Payment',
                              color: Color(0xFFFD683D),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Image.asset("assets/images/Balance Banner (2).png"),
            ),
            Gap(30),
            Text(
              "Top up Balance",
              style: GoogleFonts.averageSans(
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            ),
            Gap(6),
            Text(
              "Choose a payment method to continue",
              style: GoogleFonts.averageSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFFA7A9B7)),
            ),
            TextFormFieldWidget(
              text: 'Select payment method',
              topText: '',
              traling: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.black12,
                size: 36,
              ),
            ),
            Spacer(
              flex: 9,
            ),
            ElevationWigdgets(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: CupertinoColors.white,
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.70,
                      child: Stack(
                        children: [
                          const Image(
                            image: AssetImage(
                                "assets/images/2023-12-28 23.29.20.jpg"),
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: 60,
                                height: 6,
                                color: Color(0xFFDFE2EB),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0, 0.46),
                            child: Text(
                              "Top Up Successfully",
                              style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w800,
                                fontSize: 22,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0, 0.66),
                            child: Text(
                              "Congratulation! your balance already added \n and please check your balance.",
                              style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFFA7A9B7),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Align(
                            alignment: Alignment(0, 0.95),
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 24),
                              child: ElevationWigdgets(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyBottomNav(),
                                    ),
                                  );
                                },
                                text: 'Go to Homepage',
                                color: Color(0xFFFD683D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              text: 'Continue',
              color: Color(0xFFFD683D),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
