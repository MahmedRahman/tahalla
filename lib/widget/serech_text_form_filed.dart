import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget serechTextFormFiled() {
  return TextFormField(
    decoration: InputDecoration(
      fillColor: Colors.white,
      filled: true,
      hintText: "ابحث الان",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(
          color: Color(0xffECECEC),
        ),
      ),
      hintStyle: TextStyle(
        fontFamily: 'Loew Next Arabic',
        fontSize: 12.0,
        color: const Color(0xFF484848),
        fontWeight: FontWeight.w500,
      ),
      suffixIcon: Padding(
        padding: const EdgeInsets.only(
          left: 8,
          top: 4,
          bottom: 3,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color(0xff64C0EC),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(
              "assets/SVG/serech.svg",
            ),
          ),
        ),
      ),
    ),
  );
}
