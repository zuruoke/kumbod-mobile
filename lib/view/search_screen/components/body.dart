import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/utils/styles/text_style.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        size: 25.5,
                        color: Color(0xFF200E32),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: SizedBox(
                        height: 56,
                        width: size.width,
                        child: TextField(
                          cursorColor: hintColor,
                          decoration: InputDecoration(
                            hintText: "Search events, teams...",
                            hintStyle: defaultTextStyle(
                              16,
                              color: hintColor,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                            contentPadding: const EdgeInsets.only(
                              left: horizontalPadding / 1.5,
                              right: horizontalPadding / 1.5,
                              top: verticalPadding - 5,
                              bottom: verticalPadding - 5,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: verticalPadding - 10,
                  bottom: verticalPadding,
                ),
                child: Divider(
                  thickness: .8,
                  color: Color(
                    0xFFDDDDDD,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                ),
                child: DefaultTextWidget(
                  text: "POPULAR SEARCH",
                  fontSize: 16,
                  textColor: hintColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding - 10),
                child: Row(
                  children: const [
                    _SearchItemTile(text: "Chelsea FC"),
                    SizedBox(
                      width: 10,
                    ),
                    _SearchItemTile(text: "Juventus"),
                    SizedBox(
                      width: 10,
                    ),
                    _SearchItemTile(text: "Arsenal")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding - 10),
                child: Row(
                  children: const [
                    _SearchItemTile(text: "Real Madrid"),
                    SizedBox(
                      width: 10,
                    ),
                    _SearchItemTile(text: "Norwich City"),
                    SizedBox(
                      width: 10,
                    ),
                    _SearchItemTile(text: "Club")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding - 10),
                child: Row(
                  children: const [
                    _SearchItemTile(text: "Ajax"),
                    SizedBox(
                      width: 10,
                    ),
                    _SearchItemTile(text: "Liverpool"),
                    SizedBox(
                      width: 10,
                    ),
                    _SearchItemTile(text: "Atletico"),
                    SizedBox(
                      width: 10,
                    ),
                    _SearchItemTile(text: "Barca"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding - 10),
                child: Row(
                  children: const [
                    _SearchItemTile(text: "Al-Nassr"),
                    SizedBox(
                      width: 10,
                    ),
                    _SearchItemTile(text: "Messi"),
                    SizedBox(
                      width: 10,
                    ),
                    _SearchItemTile(text: "Ronaldo"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchItemTile extends StatelessWidget {
  final String text;
  const _SearchItemTile({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: appColor, width: .5),
          borderRadius: BorderRadius.circular(32)),
      child: DefaultTextWidget(
        text: text,
        fontWeight: FontWeight.w400,
        textColor: hintColor,
        fontSize: 14,
      ),
    );
  }
}
