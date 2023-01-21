import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff5C61A6),
          // border: Border.all(color: Colors.brown, width: 5, style: BorderStyle.solid),
        ),
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: SvgPicture.asset("assets/SVG/add.svg"),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            5,
            (index) => Row(
              children: [
                productCardItems(),
                Spacer(),
                productCardItems(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget productCardItems() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
          width: 154,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 2.0,
              color: const Color(0xFFE9E9EC),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/cook-making-dinner-kitchen-high-end-restaurant.png",
                width: 153,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  children: [
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        Text(
                          'صالات للمناسبات',
                          style: TextStyle(
                            fontFamily: 'Loew Next Arabic',
                            fontSize: 10.0,
                            color: const Color(0xFF626161),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        Spacer(),
                        Text(
                          '\$35',
                          style: TextStyle(
                            fontFamily: 'Loew Next Arabic',
                            fontSize: 12.0,
                            color: const Color(0xFF626161),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/SVG/start.svg"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4.8',
                              style: GoogleFonts.montserrat(
                                fontSize: 10.0,
                                color: const Color(0xFF2D2E49),
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset("assets/SVG/delete.svg"),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff64C0EC),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/SVG/edit.svg",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
