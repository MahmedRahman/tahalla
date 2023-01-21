import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tahalla/screen/home_page.dart';
import 'package:tahalla/screen/message_page.dart';
import 'package:tahalla/screen/product_page.dart';

class LayoutPage extends StatelessWidget {
  List<Widget> page = [
    HomePage(),
    Center(
      child: Container(
        child: Text("قيد التنفيذ"),
      ),
    ),
    ProductPage(),
    MessagePage(),
    Center(
      child: Container(
        child: Text("قيد التنفيذ"),
      ),
    ),
  ];

  var pageIndex = 2.obs;

  // ...
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      bottomNavigationBar: Obx(() {
        return customNavigationBar(
          onTap: (index) {
            pageIndex.value = index;
          },
        );
      }),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 30,
          ),
          child: Column(
            children: [
              CusteomAppBar(),
              SizedBox(
                height: 30,
              ),
              Obx(
                () {
                  return Expanded(
                    child: IndexedStack(
                      index: pageIndex.value,
                      children: page,
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customNavigationBar({
    required void Function(int)? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          selectedLabelStyle: TextStyle(
            fontFamily: 'DIN Next LT Arabic',
            fontSize: 14.0,
            color: const Color(0xFFD1D1D1),
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: 'DIN Next LT Arabic',
            fontSize: 14.0,
            color: const Color(0xFFD1D1D1),
          ),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/SVG/home_icon.svg",
                color: pageIndex.value == 0 ? Color(0xff5BBFEE) : Colors.grey,
              ),
              label: "الرئيسية",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/SVG/order.svg",
                color: pageIndex.value == 1 ? Color(0xff5BBFEE) : Colors.grey,
              ),
              label: "طلباتى",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/SVG/Category.svg",
                color: pageIndex.value == 2 ? Color(0xff5BBFEE) : Colors.grey,
              ),
              label: "منتجاتى",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/SVG/message.svg",
                color: pageIndex.value == 3 ? Color(0xff5BBFEE) : Colors.grey,
              ),
              label: "الرسايل",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/SVG/Profile.svg",
                color: pageIndex.value == 4 ? Color(0xff5BBFEE) : Colors.grey,
              ),
              label: "البروفايل",
            ),
          ],
        ),
      ),
    );
  }

  Row CusteomAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: TextDirection.rtl,
      children: [
        baesAppBarButton(
          IconName: "assets/SVG/menu_bar.svg",
          onTap: () {},
        ),
        SvgPicture.asset("assets/SVG/logo.svg"),
        Row(
          textDirection: TextDirection.rtl,
          children: [
            baesAppBarButton(
              IconName: "assets/SVG/shop.svg",
              onTap: () {},
            ),
            SizedBox(
              width: 10,
            ),
            baesAppBarButton(
              IconName: "assets/SVG/notifaction.svg",
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget baesAppBarButton({
    required String IconName,
    required void Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
            )),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: SvgPicture.asset(IconName),
        ),
      ),
    );
  }
}
