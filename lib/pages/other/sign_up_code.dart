import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:more_from_below/pages/bottomnavigatorbar/bottomnavigationbar_pages.dart';
import 'package:more_from_below/pages/home/home_pages.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets/elvvationButton_widgets.dart';

class SignUpCode extends StatefulWidget {
  const SignUpCode({Key? key}) : super(key: key);

  @override
  _SignUpCodeState createState() => _SignUpCodeState();
}

class _SignUpCodeState extends State<SignUpCode> {
  late TextEditingController textEditingController = TextEditingController();
  late String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
              const Gap(20),
              Text(
                "Verification Code",
                style: GoogleFonts.average(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Gap(10),
              Text(
                "We have sent the code verification to",
                style: GoogleFonts.average(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFA7A9B7),
                ),
              ),
              Row(
                children: [
                  Text(
                    "your number",
                    style: GoogleFonts.average(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFA7A9B7),
                    ),
                  ),
                  Text(
                    "  + 01 65841542265",
                    style: GoogleFonts.average(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const Gap(30),
              PinCodeTextField(
                length: 4,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  activeFillColor: Colors.green,
                  selectedFillColor: Color(0xFFF8F9FB),
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 60,
                  fieldWidth: 70,
                ),
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: true,
                controller: textEditingController,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  setState(() {
                    currentText = value;
                  });
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  return true;
                },
                appContext: context,
              ),
              Center(
                child: Text(
                  "02:39",
                  style: GoogleFonts.average(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Gap(30),
              ElevationWigdgets(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: CupertinoColors.white,
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.56,
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
                                "Register Successfully",
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
                                "Congratulation! your account already created. \n Please login to get amazing experience.",
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
                text: 'Submit',
                color: Color(0xFFFD683D),
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn’t receive the code?",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFFA7A9B7),
                    ),
                  ),
                  Text(
                    "  Resend",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF1D272F),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
