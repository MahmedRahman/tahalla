import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tahalla/widget/serech_text_form_filed.dart';

class HomePage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          serechTextFormFiled(),
          SizedBox(
            height: 38,
          ),
          slider(),
          SizedBox(
            height: 15,
          ),
          service(),
        ],
      ),
    );
  }

  Widget service() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'الخدمات',
              style: TextStyle(
                fontFamily: 'Loew Next Arabic',
                fontSize: 16.0,
                color: const Color(0xFF626161),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Text(
              'مشاهده المزيد',
              style: TextStyle(
                fontFamily: 'Loew Next Arabic',
                fontSize: 14.0,
                color: const Color(0xFF5BBFEE),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            serivesCard(),
            serivesCard(),
            serivesCard(),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            serivesCard(),
          ],
        )
      ],
    );
  }

  Widget serivesCard() {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SvgPicture.asset("assets/SVG/serives_icon/food.svg"),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            color: Color(0xffFFFFFF),
          ),
        ),
        Text(
          'تصفيف الشعر',
          style: TextStyle(
            fontFamily: 'Loew Next Arabic',
            fontSize: 15.0,
            color: const Color(0xFF626161),
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Container slider() {
    return Container(
      width: 342.0,
      height: 261.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.0),
        color: Colors.white.withOpacity(0.55),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.09),
            offset: Offset(0, 5.0),
            blurRadius: 30.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
              left: 33,
              right: 33,
            ),
            child: Row(
              children: [
                Text(
                  'افضل العروض',
                  style: TextStyle(
                    fontFamily: 'Loew Next Arabic',
                    fontSize: 16.0,
                    color: const Color(0xFF626161),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/SVG/send.svg"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CarouselSlider(
            options: CarouselOptions(height: 180.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      child: Image.asset(
                    "assets/images/slider.png",
                    fit: BoxFit.fill,
                  ));
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
