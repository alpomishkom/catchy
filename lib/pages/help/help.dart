import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:more_from_below/pages/help/home_scren_pages.dart';

import '../widgets/elvvationButton_widgets.dart';
import '../widgets/textfoemfild_widget.dart';
import 'insurance_pages.dart';

class HelpPages extends StatelessWidget {
  const HelpPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help Center",
          style: GoogleFonts.averageSans(
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: Color(0xFF191D31)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                "Category",
                style: GoogleFonts.averageSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF191D31)),
              ),
              Gap(20),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Insurance() ));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black12),
                            borderRadius: BorderRadius.circular(12),
                            color: CupertinoColors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/insure.svg",
                                color: Color(0xFFFD683D),
                              ),
                              Gap(18),
                              Text("Insurance")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black12),
                          borderRadius: BorderRadius.circular(12),
                          color: CupertinoColors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/phone.svg",
                              color: Color(0xFFFD683D),
                            ),
                            Gap(18),
                            Text("App Guide")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: CupertinoColors.white,
                        border: Border.all(width: 1, color: Colors.black12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/box_location.svg",
                              color: Color(0xFFFD683D),
                            ),
                            Gap(18),
                            Text("Insurance")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1, color: Colors.black12),
                        color: CupertinoColors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/valuta.svg",
                              color: Color(0xFFFD683D),
                            ),
                            Gap(18),
                            Text("App Guide")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(30),
              Text(
                "Popular Searched",
                style: GoogleFonts.averageSans(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.black12),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Why my track is not showing"),
                      Icon(Icons.add)
                    ],
                  ),
                ),
              ),
              Gap(16),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.black12),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Why my track is not showing"),
                      Icon(Icons.add)
                    ],
                  ),
                ),
              ),
              Gap(16),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.black12),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Tracky insurance terms"), Icon(Icons.add)],
                  ),
                ),
              ),
              Gap(16),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.black12),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("How to place order"), Icon(Icons.add)],
                  ),
                ),
              ),
              Gap(16),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.black12),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("How to do track"), Icon(Icons.add)],
                  ),
                ),
              ),
              Gap(30),
              Text(
                "Contact Customer Service",
                style: GoogleFonts.averageSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF191D31)),
              ),
              Gap(20),
              ElevationWigdgets(
                onPressed: () {},
                text: "📞 Contact Via Whatsapp",
                color: Color(0xFFFD683D),
              ),
              Gap(20),
              ElevationWigdgets(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HOmeScrenPages()));
                },
                text: "📞 Contact Via Whatsapp",
                color: Colors.black12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
