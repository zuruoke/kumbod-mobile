import 'package:flutter/material.dart';

class NavigatorTile extends StatelessWidget {
  const NavigatorTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 5),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xFFD0D5DD),
          ),
        ),
        child: const Icon(
          Icons.arrow_back_ios,
          size: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}
