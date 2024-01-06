import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderPages extends StatelessWidget {
  const HeaderPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: GoogleFonts.averageSans(color: Color(0xFF191D31)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Recent",
                      style: GoogleFonts.averageSans(
                        fontSize: 18,
                        color: Color(0xFF191D31),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Gap(10),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFFFD683D),
                      child: Text(
                        "4",
                        style: GoogleFonts.averageSans(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Text(
                  "Clear All",
                  style: GoogleFonts.averageSans(color: Color(0xFFFD683D)),
                )
              ],
            ),
            Gap(24),
            ListailWidget(),
            Divider(),
            Gap(16),
            ListailWidget(),
            Divider(),
            ListailWidget(),
            Divider(),
            Gap(16),
            ListailWidget(),
            Divider(),
          ],
        ),
      ),
    );
  }
}

class ListailWidget extends StatelessWidget {
  const ListailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Color(0xFF1D272F),
        child: SvgPicture.asset("assets/icons/mass.svg"),
      ),
      title: Text("Kathryn Sent You Message"),
      subtitle: Text("Tap the message"),
      trailing: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Text("2 m ago",style: GoogleFonts.averageSans(
          color: Color(0xFFA7A9B7),
          fontSize: 12
        ),),
      ),
    );
  }
}
