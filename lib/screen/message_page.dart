import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tahalla/widget/serech_text_form_filed.dart';

class MessagePage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          serechTextFormFiled(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return messageCard();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget messageCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              "assets/images/call-center.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'داليا عبدالله',
                style: TextStyle(
                  fontFamily: 'Loew Next Arabic',
                  fontSize: 14.0,
                  color: const Color(0xFF626161),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'طلب خدمة',
                style: TextStyle(
                  fontFamily: 'Loew Next Arabic',
                  fontSize: 14.0,
                  color: const Color(0xFFC4C4C4),
                  letterSpacing: -0.42,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 34.0,
                height: 23.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '2:00 ',
                      style: GoogleFonts.cairo(
                        fontSize: 12.0,
                        color: const Color(0xFFCBCBCB),
                        letterSpacing: -0.36,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      'م',
                      style: GoogleFonts.cairo(
                        fontSize: 12.0,
                        color: const Color(0xFFCBCBCB),
                        letterSpacing: -0.36,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 17.0,
                height: 23.0,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    Container(
                      width: 17.0,
                      height: 17.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xFF919191),
                      ),
                    ),
                    Positioned(
                      right: 5.0,
                      child: Text(
                        '2',
                        style: GoogleFonts.cairo(
                          fontSize: 12.0,
                          color: Colors.white,
                          letterSpacing: -0.36,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
