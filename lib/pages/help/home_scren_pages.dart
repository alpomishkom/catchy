import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/textfoemfild_widget.dart';

class HOmeScrenPages extends StatelessWidget {
  const HOmeScrenPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Stack(
                    children: [
                      Image.asset("assets/images/i.png"),
                      Align(
                        child: SvgPicture.asset("assets/icons/person_du.svg"),
                      )
                    ],
                  ),
                ),
                Gap(14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Customer Service",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Online",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFFA7AEC1)),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 290,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                    color: Color(0xFF1D272F),
                  ),
                  child: Center(
                      child: Text(
                    "Why did the expedition turning around?",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  )),
                ),
              ],
            ),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "5:09 Pm",
                  style: GoogleFonts.openSans(color: Color(0xFFA7AEC1)),
                )
              ],
            ),
          ),
          Gap(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Container(
                  width: 290,
                  height: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: Color(0xFFF9F9F9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "There are several possible roundabout expeditions :",
                          style: GoogleFonts.openSans(
                            color: Colors.black26,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Gap(30),
                        Text(
                          "1. There is an error in the package",
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Gap(10),
                        Text(
                          "Lack of goods, or not in accordance with the order that has been made.",
                          style: GoogleFonts.openSans(
                            color: Color(0xFFA7A9B7),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Gap(10),
                        Text(
                          " 2. Constrained by the weather",
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Gap(10),
                        Text(
                          "Therewas a big rain, earthquake that",
                          style: GoogleFonts.openSans(
                            color: Color(0xFFA7A9B7),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Gap(6),
                        Text(
                          "made it impossible to carry out an",
                          style: GoogleFonts.openSans(
                            color: Color(0xFFA7A9B7),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Gap(6),
                        Text(
                          "expedition.",
                          style: GoogleFonts.openSans(
                            color: Color(0xFFA7A9B7),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Gap(8),
                        Text(
                          "Read More",
                          style: GoogleFonts.openSans(
                            color: Color(0xFF191D31),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "5:09 Pm",
                  style: GoogleFonts.openSans(color: Color(0xFFA7AEC1)),
                )
              ],
            ),
          ),
          Gap(50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 290,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                    color: Color(0xFF1D272F),
                  ),
                  child: Center(
                    child: Text(
                      "Why did the expedition turning around?",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "5:09 Pm",
                  style: GoogleFonts.openSans(color: Color(0xFFA7AEC1)),
                )
              ],
            ),
          ),
          Spacer(flex: 2,),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
             children: [
               SizedBox(
                 width: 340,
                 height: 50,
                 child: TextFormField(
                   decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xFFF9F9F9),
                     border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),
                     prefixIcon: Padding(
                       padding: const EdgeInsets.all(12),
                       child: SvgPicture.asset("assets/icons/r.svg"),
                     ),
                     hintText: "Type your message",
                     suffixIcon: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 12),
                       child: SvgPicture.asset('assets/icons/smail.svg'),
                     )
                   ),
                 ),
               ),
               Gap(12),
               SvgPicture.asset("assets/icons/jonatish.svg")
             ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
