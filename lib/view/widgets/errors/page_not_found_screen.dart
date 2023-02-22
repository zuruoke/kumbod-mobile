import 'package:flutter/material.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class ErrorPageNotFoundScreen extends StatelessWidget {
  const ErrorPageNotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: const DefaultTextWidget(
          text: "Error",
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: DefaultTextWidget(
          text: "Page not found!",
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
