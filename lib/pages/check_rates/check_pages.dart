import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/card.dart';
import '../widgets/elvvationButton_widgets.dart';

class CheckPAges extends StatelessWidget {
  const CheckPAges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Check Rates",
          style: GoogleFonts.averageSans(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Color(0xFF191D31),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset("assets/icons/du.svg"),
                SizedBox(
                  height: 60,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Pick up Location",
                      hintStyle:
                          GoogleFonts.averageSans(color: Color(0xFFA7A9B7)),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/nishon.svg"),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SvgPicture.asset("assets/icons/solid.svg"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset("assets/icons/location.svg"),
                SizedBox(
                  height: 60,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Package Destination",
                      hintStyle:
                          GoogleFonts.averageSans(color: Color(0xFFA7A9B7)),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/nishon.svg"),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Gap(30),
            Text(
              "Dimension",
              style: GoogleFonts.averageSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF191D31)),
            ),
            Gap(10),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "0",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/box_location.svg"),
                  ),
                  hintStyle: GoogleFonts.openSans(color: Color(0xFFA7A9B7)),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text(
                      "Kg",
                      style: TextStyle(fontSize: 16),
                    ),
                  )),
            ),
            Gap(40),
            ElevationWigdgets(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Container(
                                  width: 60,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFDFE2EB),
                                  ),
                                ),
                              ),
                            ),
                            Gap(36),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "1254 Kanata\nOttawa",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xFF191D31)),
                                ),
                                Icon(
                                  Icons.compare_arrows,
                                  size: 44,
                                ),
                                Text(
                                  "2541  Orleans,\n           Toronto",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xFF191D31)),
                                )
                              ],
                            ),
                            Gap(8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Picked Up",
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFA7A9B7),
                                  ),
                                ),
                                Text(
                                  "Destionation",
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFA7A9B7),
                                  ),
                                )
                              ],
                            ),
                            Gap(15),
                            Divider(
                              height: 10,
                            ),
                            CardWidget(tatle: 'Regular', sutatle: "2 - 3 Days", traling: Text(r"$15"),),
                            Gap(16),
                            CardWidget(tatle: 'Cargo', sutatle: "3 - 6 Days", traling: Text(r'$31'),),
                            Gap(16),
                            CardWidget(tatle: 'Express', sutatle: "1 - 2 Days", traling: Text(r'42'),),
                          ],
                        ),
                      );
                    });
              },
              text: 'Check',
              color: Color(0xFFFD683D),
            )
          ],
        ),
      ),
    );
  }
}
