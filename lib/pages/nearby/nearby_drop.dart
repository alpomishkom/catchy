import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:more_from_below/pages/widgets/elvvationButton_widgets.dart';

class NearbyDropPages extends StatelessWidget {
  const NearbyDropPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nearby Drop"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: SvgPicture.asset("assets/icons/more.svg"),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: const Image(
                  image: AssetImage("assets/images/Rectangle 115.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 38,
                bottom: 140,
                child: SvgPicture.asset("assets/icons/bulur.svg"),
              ),
              Positioned(
                left: 6,
                bottom: 104,
                child: SvgPicture.asset("assets/icons/black_dumoloq.svg"),
              ),
              Positioned(
                left: 50,
                bottom: 152,
                child: SvgPicture.asset(
                  "assets/icons/location.svg",
                  color: Colors.white,
                  width: 20,
                ),
              ),
              Positioned(
                right: 80,
                bottom: 36,
                child: SvgPicture.asset("assets/icons/bulur.svg"),
              ),
              Positioned(
                right: 50,
                bottom: 0,
                child: SvgPicture.asset("assets/icons/black_dumoloq.svg"),
              ),
              Positioned(
                right: 94,
                bottom: 48,
                child: SvgPicture.asset(
                  "assets/icons/location.svg",
                  color: Colors.white,
                  width: 20,
                ),
              ),
            ],
          ),
          Gap(10),
          Container(
            width: 60,
            height: 6,
            decoration: BoxDecoration(
              color: Color(0xFFDFE2EB),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Gap(26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  filled: true,
                  hintText: "Search location",
                  prefixIcon: Icon(Icons.search),
                  fillColor: Color(0xFFF9F9F9)),
            ),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            Gap(10),
                            Container(
                              width: 60,
                              height: 6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFDFE2EB)),
                            ),
                            Gap(30),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFDFE2EB),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: SvgPicture.asset(
                                  'assets/icons/location.svg',
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                            ),
                            Gap(20),
                            Text(
                              "New Montgomery",
                              style: GoogleFonts.openSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF191D31)),
                            ),
                            Gap(8),
                            Text(
                              "4517 Washington Ave. Manchester, Kentucky 39495",
                              style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFA7A9B7)),
                            ),
                            Gap(12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/icons/soat.svg"),
                                    Gap(6),
                                    Text("09:00 AM - 05:00PM"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/icons/loc.svg"),
                                    Gap(6),
                                    Text("09:00 AM - 05:00PM"),
                                  ],
                                ),
                              ],
                            ),
                            Divider(),
                            Gap(16),
                            Text(
                              "0812274616352",
                              style: GoogleFonts.openSans(
                                  color: Color(0xFFA7A9B7),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            Gap(16),
                            Divider(),
                            Gap(30),
                            ElevationWigdgets(
                              onPressed: () {},
                              text: 'Dial',
                              color: Color(0xFFFD683D),
                            ),
                            Gap(16),
                            ElevationWigdgets(
                              onPressed: () {},
                              text: 'Direction',
                              color: Color(0xFFA7A9B7),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: listTaile(),
          ),
          Gap(6),
          Divider(),
          InkWell(
            child: listTaile(),
          ),
          Gap(6),
          Divider(),
          InkWell(
            child: listTaile(),
          ),
          Gap(6),
          Divider(),
        ],
      ),
    );
  }

  Padding listTaile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListTile(
        leading: SvgPicture.asset("assets/icons/location.svg"),
        title: Text("New Montgomery"),
        subtitle: Text(
          "4517 Washington Ave. Manchester...",
          style: TextStyle(color: Color(0xFFA7A9B7), fontSize: 12),
        ),
        trailing: Text(
          '3.21 KM',
          style: TextStyle(color: Color(0xFF191D31)),
        ),
      ),
    );
  }
}
