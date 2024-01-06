import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart'; // Add the correct import for Gap
import 'package:google_fonts/google_fonts.dart';
import 'package:more_from_below/pages/bottomnavigatorbar/bottomnavigationbar_pages.dart';
import 'package:more_from_below/pages/other/sign_up_code.dart';
import '../home/home_pages.dart';
import '../widgets/elvvationButton_widgets.dart';
import '../widgets/textfoemfild_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: const Color(0xFFF3F3F3),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
                const Gap(20), // Corrected Gap widget
                Text(
                  "Shipping and Track Anytime ",
                  style: GoogleFonts.average(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Gap(10), // Corrected Gap widget
                Text(
                  "Get a great experience with Tracky",
                  style: GoogleFonts.average(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFA7A9B7),
                  ),
                ),
                const Gap(30), // Corrected Gap widget
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFF8F9FB),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: a == 1 ? Colors.white : Color(0xFFF8F9FB),
                          fixedSize: const Size(160, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            a = 1;
                          });
                        },
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF191D31),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: a == 2 ? Colors.white : Color(0xFFF8F9FB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          fixedSize: const Size(160, 48),
                        ),
                        onPressed: () {
                          setState(() {
                            a = 2;
                          });
                        },
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF191D31),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(30), // Corrected Gap widget
                if (a == 1) ...[
                  TextFormFieldWidget(
                    text: 'Enter your name',
                    topText: 'Full Name',
                    iconSvg: SvgPicture.asset("assets/icons/peson.svg"),
                  ),
                  const Gap(20), // Corrected Gap widget
                  TextFormFieldWidget(
                    text: 'Enter your number',
                    topText: 'Phone Number',
                    iconSvg: SvgPicture.asset("assets/icons/coll.svg"),
                  ),
                  const Gap(20), // Corrected Gap widget
                  TextFormFieldWidget(
                    text: 'Enter your password',
                    topText: 'Password',
                    iconSvg: SvgPicture.asset("assets/icons/lock.svg"),
                  )
                ],
                if (a == 2) ...[
                  const Gap(20), // Corrected Gap widget
                  TextFormFieldWidget(
                    text: 'Enter your number',
                    topText: 'Phone Number',
                    iconSvg: SvgPicture.asset("assets/icons/coll.svg"),
                  ),
                  const Gap(20), // Corrected Gap widget
                  TextFormFieldWidget(
                    text: 'Enter your password',
                    topText: 'Password',
                    iconSvg: SvgPicture.asset("assets/icons/lock.svg"),
                  )
                ],

                const Gap(40), // Corrected Gap widget
                ElevationWigdgets(
                  onPressed: () {
                    if(a == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpCode(),
                        ),
                      );
                    }else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyBottomNav(),
                        ),
                      );
                    }
                  },
                  text: 'Sign In',
                  color: Color(0xFFFD683D),
                ),
                const Gap(30), // Corrected Gap widget
                Divider(color: Color(0xFFA7A9B7)),
                const Gap(10), // Corrected Gap widget
                Center(
                  child: Text(
                    "Or Sign Up With",
                    style: GoogleFonts.average(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA7A9B7),
                    ),
                  ),
                ),
                const Gap(10), // Corrected Gap widget
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(double.maxFinite, 60),
                    backgroundColor: CupertinoColors.white,
                    elevation: 0,
                  ),
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/google.svg"),
                  label: Text(
                    'Sign Up with Google',
                    style: GoogleFonts.average(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF191D31),
                    ),
                  ),
                ),
                Gap(20),
                if(a == 2) ...[
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(double.maxFinite, 60),
                      backgroundColor: Color(0xFFFD683D),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/apples.svg"),
                    label: Text(
                      'Sign Up with Google',
                      style: GoogleFonts.average(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
