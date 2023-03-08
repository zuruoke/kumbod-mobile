import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/widgets/buttons/decorated_button.dart';
import 'package:kumbod/view/widgets/input_fields/decorated_input_field.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';
import 'package:kumbod/view/widgets/tile/navigator_tile.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: horizontalPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          NavigatorTile(),
                          DefaultTextWidget(
                            text: "Edit Profile",
                            fontSize: 20.5,
                            textColor: textThemeColor,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(
                            width: 40,
                          )
                        ],
                      ),
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
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 150,
                        padding: const EdgeInsets.symmetric(
                            horizontal: horizontalPadding / 2.0),
                        decoration: BoxDecoration(
                            color: appColorShade,
                            borderRadius: BorderRadius.circular(32)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.camera_enhance_rounded,
                              size: 23,
                              color: Colors.white,
                            ),
                            DefaultTextWidget(
                              text: "Change Photo",
                              fontSize: 12.5,
                              textColor: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      DefaultTextWidget(
                        text: "Personal Details",
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        textColor: Color(0xFF72777A),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      DecoratedInputField(
                        titleTextFontSize: 14.0,
                        hintText: "Richard Willson",
                        fontWeight: FontWeight.w500,
                        borderSideWidth: 1,
                        titleText: "Full Name",
                        titleTextColor: Color(0xFF72777A),
                        borderRadius: 16,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DecoratedInputField(
                        titleTextFontSize: 14.0,
                        hintText: "02/10/1997",
                        fontWeight: FontWeight.w500,
                        borderSideWidth: 1,
                        titleText: "Birthdate",
                        titleTextColor: Color(0xFF72777A),
                        borderRadius: 16,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DecoratedInputField(
                        titleTextFontSize: 14.0,
                        hintText: "Hamburg, Germany",
                        fontWeight: FontWeight.w500,
                        borderSideWidth: 1,
                        titleText: "Location",
                        titleTextColor: Color(0xFF72777A),
                        borderRadius: 16,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DecoratedInputField(
                        titleTextFontSize: 14.0,
                        hintText: "Woman",
                        fontWeight: FontWeight.w500,
                        borderSideWidth: 1,
                        titleText: "Gender",
                        titleTextColor: Color(0xFF72777A),
                        borderRadius: 16,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      DecoratedButton(
                        text: "Save Changes",
                        color: appColorShade,
                        textColor: Colors.white,
                        height: 56,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
