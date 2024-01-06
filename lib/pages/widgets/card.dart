import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  final String tatle;
  final String sutatle;
  final Widget traling;

  const CardWidget({
    super.key, required this.tatle, required this.sutatle, required this.traling,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.black12,),borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      color: Color(0xFFF3F3F3),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFF2F4F9),
          ),
          child: Stack(
            children: [
              Align(
                child: SvgPicture.asset(
                  "assets/icons/order_color.svg",
                  width: 24,
                ),
                alignment: Alignment(-0.1, 0.060),
              ),
              Align(
                child: SvgPicture.asset(
                  "assets/icons/order.svg",
                  width: 24,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          tatle,
          style: GoogleFonts.averageSans(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF191D31),
          ),
        ),
        subtitle: Text(
          sutatle,
          style: GoogleFonts.averageSans(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFFA7A9B7),
          ),
        ),
        trailing:  traling
      ),
    );
  }
}