import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../bottomnavigatorbar/bottomnavigationbar_pages.dart';
import '../other/sign_up_pages.dart';
import '../widgets/elvvationButton_widgets.dart';
import 'onbordig_widget.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int curret = 0;
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: PageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: (int value) {
                setState(() {
                  curret = value;
                });
              },
              controller: _controller,
              children: const [
                PagesViewWidgats(
                  text: "Cash on Delivery or E-payment",
                  subtxet:
                      "Our delivery will ensure your items are delivered right to the door steps",
                  image: AssetImage(
                    "assets/images/image_2023-12-26_00-47-39.png",
                  ),
                ),
                PagesViewWidgats(
                  text: "Cash on Delivery or E-payment",
                  subtxet:
                      "Our delivery will ensure your items are delivered right to the door steps",
                  image: AssetImage(
                    "assets/images/2023-12-28 13.48.00.jpg",
                  ),
                ),
                PagesViewWidgats(
                  text: "Cash on Delivery or E-payment",
                  subtxet:
                      "Our delivery will ensure your items are delivered right to the door steps",
                  image: AssetImage(
                    "assets/images/image_2023-12-26_01-22-50.png",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(
              flex: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  3,
                  (index) => TweenAnimationBuilder(
                    curve: Curves.elasticInOut,
                    tween: Tween(end: 1.0, begin: 0.0),
                    duration: const Duration(microseconds: 100),
                    builder: (value, context, child) {
                      return Transform.scale(
                        scaleX: context,
                        scaleY: context,
                        child: Container(
                          width: index == curret ? 18 : 18,
                          height: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: index == curret
                                ? Color(0xFF1D272F)
                                : const Color(0xFFEBECF3),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            ElevationWigdgets(
              textcolor: Colors.white,
              text: 'Create Account',
              color: const Color(0xFFFD683D),
              onPressed: () {
                curret++;
                if (curret < 3) {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linear,
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                }
              },
            ),
            const Gap(16),
            ElevationWigdgets(
              textcolor: Colors.black,
              text: 'Sign In as Guest',
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyBottomNav()),
                );
              },
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
