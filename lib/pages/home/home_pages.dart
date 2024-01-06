import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:more_from_below/pages/check_rates/check_pages.dart';
import 'package:more_from_below/pages/order/oprder_pages.dart';
import 'package:more_from_below/pages/wallit/wallid_pages.dart';

import '../header/header.dart';
import '../help/help.dart';
import '../nearby/nearby_drop.dart';
import '../widgets/card.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  child: Image(
                    image: AssetImage(
                        "assets/images/image_2023-12-28_23-14-29.png"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    "assets/images/logo 2121-01 1.png"),
                                width: 44,
                                height: 44,
                              ),
                              Gap(6),
                              Text(
                                "Catchy",
                                style: GoogleFonts.average(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HeaderPages(),
                                ),
                              );
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 2,
                                  color: Color.fromRGBO(255, 255, 255, 0.20),
                                ),
                              ),
                              child: Center(
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/icons/shopping.svg"),
                                    Positioned(
                                      left: 12,
                                      child: SvgPicture.asset(
                                          "assets/icons/dumoloq.svg"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Gap(42),
                      Container(
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 14, vertical: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "My Balance",
                                    style: GoogleFonts.average(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xFFA7A9B7)),
                                  ),
                                  Text(
                                    r"$3.382.00",
                                    style: GoogleFonts.average(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Color(0xFF191D31),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Top Up",
                                    style: GoogleFonts.average(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF191D31),
                                    ),
                                  ),
                                  Gap(12),
                                  Icon(Icons.add_box),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Gap(20),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFD683D),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset("assets/icons/serch.svg"),
                          ),
                          hintText: "Enter track number",
                          hintStyle: GoogleFonts.openSans(
                              fontSize: 14, color: Color(0xFF1D272F)),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                SvgPicture.asset("assets/icons/card_scrin.svg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Features",
                    style: GoogleFonts.averageSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 310,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CheckPAges()));
                            }
                            if (index == 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NearbyDropPages(),
                                ),
                              );
                            }
                            if (index == 2) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderPages(),
                                ),
                              );
                            }
                            if (index == 3) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HelpPages(),
                                ),
                              );
                            }
                            if (index == 4) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WallidPages(),
                                ),
                              );
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 86,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Align(
                                      child: SvgPicture.asset(
                                        "assets/icons/${lsitColor.elementAt(index)}",
                                        width: 24,
                                      ),
                                      alignment: Alignment(-0.090, 0.060),
                                    ),
                                    Align(
                                      child: SvgPicture.asset(
                                        "assets/icons/${lsitImages.elementAt(index)}",
                                        width: 24,
                                      ),
                                    )
                                  ],
                                ),
                                Gap(6),
                                Text(text.elementAt(index)),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 6,
                    ),
                  ),
                  Gap(30),
                  Text(
                    "Services and Product",
                    style: GoogleFonts.averageSans(
                      color: Color(0xFF191D31),
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                  Gap(20),
                  const Column(
                    children: [
                      CardWidget(
                        tatle: 'MM09132005',
                        sutatle: 'Processed at sort facility',
                        traling: Text('2 Hrs'),
                      ),
                      Gap(16),
                      CardWidget(
                        tatle: 'MA84561259',
                        sutatle: "Processed at sort facility",
                        traling: Text('2 Hrs'),
                      ),
                      Gap(16),
                      CardWidget(
                        tatle: 'FU84593276',
                        sutatle: "Processed at sort facility",
                        traling: Text('2 Hrs'),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

var lsitImages = [
  "valuta.svg",
  "drop1.svg",
  "order.svg",
  "help.svg",
  "wallet.svg",
  'order.svg'
];
var lsitColor = [
  "vektor.svg",
  "drop.svg",
  "order_color.svg",
  "helper1_color.svg",
  "helper1_color.svg",
  'order_color.svg'
];

var text = [
  "Check Rates",
  "Nearby Drop",
  "Order",
  "Help Center",
  "Wallet",
  "Others"
];
