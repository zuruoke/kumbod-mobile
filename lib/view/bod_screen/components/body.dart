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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => setState(() => pageIndex = 0),
                          child: Container(
                            height: 38,
                            width: pageIndex == 0
                                ? 0.35 * size.width
                                : 0.25 * size.width,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: pageIndex == 0
                                  ? const Color(0xFFF5FAFF)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: pageIndex == 0
                                    ? appColorShade
                                    : const Color(0xFF758494),
                                width: 1,
                              ),
                            ),
                            child: DefaultTextWidget(
                              fontSize: 14.5,
                              text: "For you",
                              textColor: pageIndex == 0
                                  ? appColorShade
                                  : const Color(0xFF758494),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => setState(() => pageIndex = 1),
                          child: Container(
                            height: 38,
                            width: pageIndex == 1
                                ? 0.35 * size.width
                                : 0.25 * size.width,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: pageIndex == 1
                                  ? const Color(0xFFF5FAFF)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: pageIndex == 1
                                    ? appColorShade
                                    : const Color(0xFF758494),
                                width: 1,
                              ),
                            ),
                            child: DefaultTextWidget(
                              fontSize: 14.5,
                              text: "Friends",
                              textColor: pageIndex == 1
                                  ? appColorShade
                                  : const Color(0xFF758494),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => setState(() => pageIndex = 2),
                          child: Container(
                            height: 38,
                            width: pageIndex == 2
                                ? 0.35 * size.width
                                : 0.25 * size.width,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: pageIndex == 2
                                  ? const Color(0xFFF5FAFF)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: pageIndex == 2
                                    ? appColorShade
                                    : const Color(0xFF758494),
                                width: 1,
                              ),
                            ),
                            child: DefaultTextWidget(
                              fontSize: 14.5,
                              text: "Active Bods",
                              textColor: pageIndex == 2
                                  ? appColorShade
                                  : const Color(0xFF758494),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
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
