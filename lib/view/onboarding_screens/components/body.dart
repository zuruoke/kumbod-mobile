import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/onboarding_screens/components/page_one_content.dart';
import 'package:kumbod/view/onboarding_screens/components/page_three_content.dart';
import 'package:kumbod/view/onboarding_screens/components/page_two_content.dart';
import 'package:kumbod/view/widgets/buttons/decorated_button.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class OnboardingScreenBody extends StatefulWidget {
  const OnboardingScreenBody({super.key});

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {
  int pageIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  whenPageChanges(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            onPageChanged: whenPageChanges,
            controller: _pageController,
            children: const [
              PageOneContent(),
              PageTwoContent(),
              PageThreeContent(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: verticalPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.brightness_1,
                      color:
                          pageIndex == 0 ? appColor : const Color(0xFF98A2B3),
                      size: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.brightness_1,
                      color:
                          pageIndex == 1 ? appColor : const Color(0xFF98A2B3),
                      size: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.brightness_1,
                      color:
                          pageIndex == 2 ? appColor : const Color(0xFF98A2B3),
                      size: 18,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const DecoratedButton(
                text: "Get Started",
                height: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              DecoratedButton(
                  text: "Skip",
                  height: 50,
                  textColor: appColor,
                  color: appColor.withOpacity(.1)),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
