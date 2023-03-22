// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/bod_screen/bod_screen.dart';
import 'package:kumbod/view/home/home_screen.dart';
import 'package:kumbod/view/profile_screen/profile_screen.dart';
import 'package:kumbod/view/wallet_screen/wallet_screen.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class TabScreenBody extends StatefulWidget {
  const TabScreenBody({super.key});

  @override
  State<TabScreenBody> createState() => _TabScreenBodyState();
}

class _TabScreenBodyState extends State<TabScreenBody> {
  int _selectedIndex = 0;
  bool _isMultipleOverlay = false;

  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    BodScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(0xFF758494),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: appColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset("assets/images/home_active.svg")
                : SvgPicture.asset("assets/images/home.svg"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset("assets/images/bod_active.svg")
                : SvgPicture.asset("assets/images/bod.svg"),
            label: 'Bods',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset("assets/images/wallet_active.svg")
                : SvgPicture.asset("assets/images/wallet.svg"),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset("assets/images/person_active.svg")
                : SvgPicture.asset("assets/images/person.svg"),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: _isMultipleOverlay && _selectedIndex == 0
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 34,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: horizontalPadding / 2.0),
                      decoration: BoxDecoration(
                          color: appColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: const DefaultTextWidget(
                        text: "Join a bod",
                        fontSize: 16,
                        textColor: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      tooltip: 'Join',
                      backgroundColor: appColor,
                      child: SvgPicture.asset(
                        "assets/images/bod_active.svg",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 34,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: horizontalPadding / 2.0),
                      decoration: BoxDecoration(
                          color: appColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: const DefaultTextWidget(
                        text: "Add a friend",
                        fontSize: 16,
                        textColor: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      tooltip: 'Add',
                      backgroundColor: appColor,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const DefaultTextWidget(text: "", fontSize: 18),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          _isMultipleOverlay = false;
                        });
                      },
                      tooltip: 'Cancel',
                      backgroundColor: appColor,
                      child: SvgPicture.asset(
                        "assets/images/plus-2.svg",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            )
          : _selectedIndex == 0
              ? FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _isMultipleOverlay = true;
                    });
                  },
                  tooltip: 'Add',
                  backgroundColor: appColor,
                  child: const Icon(Icons.add),
                )
              : null,
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}
