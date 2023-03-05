import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/profile_screen/components/profile_list_tile.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

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
              Center(
                child: Column(
                  children: [
                    const DefaultTextWidget(
                      text: "Profile",
                      fontSize: 20.5,
                      textColor: textThemeColor,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: appColorShade,
                          width: 3.0,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 5.5,
                            left: 0,
                            right: 0,
                            bottom: 5.5,
                            child: Container(
                              height: 79,
                              width: 79,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFC3C7DF)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const DefaultTextWidget(
                      text: "Richard Willson",
                      fontSize: 16.5,
                      textColor: hintColor,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const DefaultTextWidget(
                      text: "Richardwillson@gmail.com",
                      fontSize: 12.5,
                      textColor: Color(0xFF72777A),
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 150,
                        padding: const EdgeInsets.symmetric(
                            horizontal: horizontalPadding),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: appColorShade,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            DefaultTextWidget(
                              text: "Edit profile",
                              fontSize: 12.5,
                              textColor: appColorShade,
                              fontWeight: FontWeight.w400,
                            ),
                            Icon(
                              Icons.edit_rounded,
                              size: 23,
                              color: appColorShade,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding, vertical: verticalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    DefaultTextWidget(
                      text: "Account",
                      fontSize: 16.5,
                      textColor: Color(0xFF72777A),
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ProfileListTile(text: "Payment", icon: Icons.payment),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileListTile(text: "Settings", icon: Icons.settings),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileListTile(text: "About", icon: Icons.help),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileListTile(
                      text: "Logout",
                      icon: Icons.logout_rounded,
                      iconColor: Colors.red,
                    ),
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
