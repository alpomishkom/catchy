import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String text;
  final String topText;
  final Widget? traling;
  final SvgPicture? iconSvg;

  const TextFormFieldWidget({
    Key? key,
    required this.text,
    required this.topText,
    this.iconSvg,
    this.traling,
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool a = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.topText,
          style: GoogleFonts.average(
            color: Color(0xFF191D31),
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
        Gap(10),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF9F9F9),
            prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0), child: widget.iconSvg),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: widget.text,
            hintStyle: GoogleFonts.average(
              color: Color(0xFFA7A9B7),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            suffixIcon: widget.traling,
          ),
          onChanged: (value) {
            setState(() {
              a = value.isEmpty;
            });
          },
        ),
      ],
    );
  }
}
