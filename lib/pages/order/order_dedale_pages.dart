import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:more_from_below/pages/home/home_pages.dart';

import '../widgets/card.dart';
import '../widgets/elvvationButton_widgets.dart';
import '../widgets/textfoemfild_widget.dart';

class OrderDetale extends StatefulWidget {
  const OrderDetale({super.key});

  @override
  State<OrderDetale> createState() => _OrderDetaleState();
}

class _OrderDetaleState extends State<OrderDetale> {
  bool selectedPaymentMethod = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Details",
          style: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: const Color(0xFF191D31),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Gap(36),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormFieldWidget(
                    text: 'Enter package type',
                    topText: 'Full Name',
                    iconSvg: SvgPicture.asset("assets/icons/box_location.svg"),
                  ),
                ),
                Gap(10),
                Expanded(
                  child: TextFormFieldWidget(
                    traling: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("KG"),
                    ),
                    text: '0',
                    topText: 'Weight',
                  ),
                ),
              ],
            ),
            Gap(26),
            Row(
              children: [
                Expanded(
                  child: TextFormFieldWidget(
                    text: 'Length',
                    topText: 'Dimension',
                    traling: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text("Cm"),
                    ),
                  ),
                ),
                Gap(10),
                Expanded(
                  child: TextFormFieldWidget(
                    text: 'Width',
                    traling: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text("Cm"),
                    ),
                    topText: '',
                  ),
                ),
                Gap(10),
                Expanded(
                  child: TextFormFieldWidget(
                    text: 'Height',
                    traling: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text("Cm"),
                    ),
                    topText: '',
                  ),
                ),
              ],
            ),
            Gap(20),
            TextFormFieldWidget(
              text: 'Select Services',
              topText: 'Services',
              iconSvg: SvgPicture.asset('assets/icons/colendalr.svg'),
              traling: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                              ],
                            ),
                            Gap(46),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text(
                                "Services",
                                style: GoogleFonts.openSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF191D31),
                                ),
                              ),
                            ),
                            Gap(10),
                            CardWidget(
                              tatle: 'Regular',
                              sutatle: '2 - 3 Days',
                              traling: Text(r"$15"),
                            ),
                            Gap(20),
                            CardWidget(
                              tatle: 'Cargo',
                              sutatle: '2 - 3 Days',
                              traling: Text(r"$15"),
                            ),
                            Gap(20),
                            CardWidget(
                              tatle: 'Express',
                              sutatle: '2 - 3 Days',
                              traling: Text(r"$15"),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Icon(
                  Icons.keyboard_arrow_down_outlined,
                ),
              ),
            ),
            Gap(20),
            Container(
              width: double.maxFinite,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFF1D272F),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/erorr.svg"),
                    Gap(10),
                    Text(
                      "Weight discrepancies will incur additional \n fees or the goods will be returned",
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFF86A40),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(
              flex: 6,
            ),
            ElevationWigdgets(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                              ],
                            ),
                            Gap(46),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text(
                                "Payment Method",
                                style: GoogleFonts.openSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF191D31),
                                ),
                              ),
                            ),
                            Gap(10),
                            InkWell(
                              child: CardWidget(
                                tatle: 'Tracky Balance',
                                sutatle: r'$4.875.00',
                                traling: selectedPaymentMethod
                                    ? Icon(Icons.circle_outlined)
                                    : Icon(Icons.circle),
                              ),
                              onTap: () {
                                setState(() {
                                  selectedPaymentMethod = !selectedPaymentMethod;
                                });
                                showModalBottomSheet(
                                  backgroundColor: CupertinoColors.white,
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.6,
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
                                                      builder: (context) => HomePages(),
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
                            ),
                            InkWell(
                              child: CardWidget(
                                tatle: 'Mastercard',
                                sutatle: '2 - 3 Days',
                                traling: selectedPaymentMethod
                                    ? Icon(Icons.circle_rounded)
                                    : Icon(Icons.circle_outlined),
                              ),
                              onTap: () {
                                setState(() {
                                  selectedPaymentMethod = !selectedPaymentMethod;
                                });
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
                                                      builder: (context) => HomePages(),
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
                            ),
                            Gap(38),
                            ElevationWigdgets(
                              onPressed: () {},
                              text: 'Confirm Payment',
                              color: Color(0xFFF86A40),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              text: 'Pay Now',
              color: Color(0xFFF86A40),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
