// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/utils/styles/text_style.dart';
import 'package:kumbod/view/home/components/match_tile.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';
import 'dart:math' as math;

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Colors.grey, shape: BoxShape.circle),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: horizontalPadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              DefaultTextWidget(
                                text: "Hey, Stella",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                textColor: Color(0xFF212226),
                              ),
                              DefaultTextWidget(
                                text: "Welcome to Loreum",
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                textColor: Color(0xFF344054),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF22172A),
                            width: 1.0,
                          ),
                        ),
                        child: SvgPicture.asset(
                          "assets/images/notification_active.svg",
                          width: 30,
                          height: 30,
                        )

                        // const Icon(
                        //   Icons.notifications_active,
                        //   size: 28,
                        //   color: textColor,
                        // ),
                        )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Container(
                  height: 56,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F7F7),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    cursorColor: hintColor,
                    onTap: () => Navigator.pushNamed(context, "/search-screen"),
                    decoration: InputDecoration(
                      hintText: "Search events, teams...",
                      hintStyle: defaultTextStyle(
                        16,
                        color: hintColor,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 28,
                        color: hintColor,
                      ),
                      contentPadding: const EdgeInsets.only(
                        left: horizontalPadding / 1.5,
                        right: horizontalPadding / 1.5,
                        top: verticalPadding + 5,
                        bottom: verticalPadding,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 140,
                    width: size.width,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: verticalPadding + 5),
                    height: 130,
                    width: size.width,
                    decoration: const BoxDecoration(color: appColor),
                  ),
                  Positioned(
                    left: 0.5 * size.width,
                    child: Container(
                      margin: const EdgeInsets.only(top: verticalPadding + 5),
                      height: 130,
                      width: 0.5 * size.width,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF).withOpacity(.10)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      "assets/images/van_dijk.png",
                      scale: 3.9,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: horizontalPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const DefaultTextWidget(
                          text: "Up To \$100",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          textColor: Colors.white,
                        ),
                        const DefaultTextWidget(
                          text: "Free Matched Bods",
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          textColor: Colors.white,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: const Color(0xFFFFFFFF).withOpacity(.50),
                                size: 24,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              DefaultTextWidget(
                                text: "Join Bod Now!",
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                textColor:
                                    const Color(0xFFFFFFFF).withOpacity(.50),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding + 5),
                child: DefaultTextWidget(
                  text: "Top Events",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  textColor: textThemeColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: horizontalPadding / 2.0,
                          ),
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: appColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "assets/images/sports_soccer.svg",
                                width: 22,
                                height: 22,
                                color: Colors.white,
                              ),
                              // Icon(
                              //   Icons.sports_football_rounded,
                              //   size: 22,
                              //   color: Colors.white,
                              // ),
                              const DefaultTextWidget(
                                text: "Football",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                textColor: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: horizontalPadding / 2.0,
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F4F5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.ac_unit_rounded,
                            size: 22,
                            color: const Color(0xff32323280).withOpacity(.50),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: horizontalPadding / 2.0,
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F4F5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.ac_unit_rounded,
                            size: 22,
                            color: const Color(0xff32323280).withOpacity(.50),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: horizontalPadding / 2.0,
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F4F5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.ac_unit_rounded,
                            size: 22,
                            color: const Color(0xff32323280).withOpacity(.50),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: horizontalPadding / 2.0,
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F4F5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.ac_unit_rounded,
                            size: 22,
                            color: const Color(0xff32323280).withOpacity(.50),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: horizontalPadding / 2.0,
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F4F5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.ac_unit_rounded,
                            size: 22,
                            color: const Color(0xff32323280).withOpacity(.50),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: MatchTile(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: MatchTile(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: MatchTile(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
