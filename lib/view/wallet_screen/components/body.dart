import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class WalletScreenBody extends StatelessWidget {
  const WalletScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: DefaultTextWidget(
                    text: "Wallet",
                    fontSize: 20.5,
                    textColor: textThemeColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  height: 120,
                  width: size.width,
                  margin: const EdgeInsets.only(
                    top: 40,
                    bottom: 20,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding,
                  ),
                  decoration: BoxDecoration(
                    color: appColorShade,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const DefaultTextWidget(
                            text: "Account Balance",
                            fontSize: 15.5,
                            textColor: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.visibility_outlined,
                              size: 21,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          DefaultTextWidget(
                            text: "\$",
                            fontSize: 25.5,
                            textColor: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                          DefaultTextWidget(
                            text: "0.00",
                            fontSize: 32.2,
                            textColor: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 0.4 * size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: blueDarkColor,
                        ),
                        child: const DefaultTextWidget(
                          text: "Withdraw",
                          fontSize: 16.4,
                          textColor: appColorShade,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 0.4 * size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: blueDarkColor,
                        ),
                        child: const DefaultTextWidget(
                          text: "Deposit",
                          fontSize: 16.4,
                          textColor: appColorShade,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                    bottom: 10,
                  ),
                  child: DefaultTextWidget(
                    text: "Analytics",
                    fontSize: 16.4,
                    textColor: hintColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 116,
                  width: size.width,
                  margin: const EdgeInsets.only(
                    bottom: 30,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding,
                  ),
                  decoration: BoxDecoration(
                    color: blueDarkColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF12B76A)),
                            child: const Icon(
                              Icons.arrow_downward,
                              size: 28.5,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              DefaultTextWidget(
                                text: "Received",
                                fontSize: 16.4,
                                textColor: Color(0xFF12B76A),
                                fontWeight: FontWeight.w400,
                              ),
                              DefaultTextWidget(
                                text: "0.00",
                                fontSize: 16.4,
                                textColor: hintColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF04438)),
                            child: const Icon(
                              Icons.arrow_upward,
                              size: 28.5,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              DefaultTextWidget(
                                text: "Withdrawals",
                                fontSize: 16.4,
                                textColor: Color(0xFFF04438),
                                fontWeight: FontWeight.w400,
                              ),
                              DefaultTextWidget(
                                text: "0.00",
                                fontSize: 16.4,
                                textColor: hintColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 40,
                  ),
                  child: DefaultTextWidget(
                    text: "Recent Transactions",
                    fontSize: 16.4,
                    textColor: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/no_bods.png",
                        scale: 2.0,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const DefaultTextWidget(
                        text: "No Recent Transactions",
                        fontSize: 16.4,
                        textColor: hintColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
