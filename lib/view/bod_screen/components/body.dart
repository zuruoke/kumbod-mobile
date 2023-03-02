import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/bod_screen/components/bod_no_content_screen.dart';
import 'package:kumbod/view/bod_screen/components/bods_list_tile.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class BodScreenBody extends StatefulWidget {
  const BodScreenBody({super.key});

  @override
  State<BodScreenBody> createState() => _BodScreenBodyState();
}

class _BodScreenBodyState extends State<BodScreenBody> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const DefaultTextWidget(
                fontSize: 20.5,
                text: "Bods",
                textColor: textThemeColor,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding, vertical: verticalPadding),
                child: Column(
                  children: [
                    SizedBox(
                      height: 48,
                      width: size.width,
                      child: Stack(children: [
                        Container(
                          height: 48,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5FAFF),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    pageIndex = 0;
                                  });
                                },
                                child: const DefaultTextWidget(
                                  fontSize: 14.5,
                                  text: "For you",
                                  textColor: appColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    pageIndex = 1;
                                  });
                                },
                                child: const DefaultTextWidget(
                                  fontSize: 14.5,
                                  text: "Friends",
                                  textColor: appColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 6,
                            left: pageIndex == 0 ? 6 : null,
                            right: pageIndex == 1 ? 6 : null,
                            bottom: 6,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              alignment: Alignment.center,
                              height: 36,
                              width: 0.43 * size.width,
                              child: DefaultTextWidget(
                                fontSize: 14.5,
                                text: pageIndex == 0 ? "For you" : "Friends",
                                textColor: appColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ))
                      ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              pageIndex == 0
                  ? Column(
                      children: const [
                        BodListTile(),
                        BodListTile(),
                        BodListTile(),
                        BodListTile(),
                        BodListTile(),
                      ],
                    )
                  : const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: BodNoContentScreen(),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
