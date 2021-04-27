import 'package:flutter/material.dart';
import 'package:lmma_box/providers/screen_scroll.dart';
import 'package:lmma_box/view/welcome_screen/pages/fourth_page.dart';
import 'package:lmma_box/view/welcome_screen/pages/first_page.dart';
import 'package:lmma_box/view/welcome_screen/pages/second_page.dart';
import 'package:lmma_box/view/welcome_screen/pages/third_page.dart';
import 'package:lmma_box/view/welcome_screen/widgets/bottom_buttons.dart';
import 'package:lmma_box/view/welcome_screen/widgets/welcome_screen_pagination.dart';
import 'package:provider/provider.dart';

class PageScroller extends StatelessWidget {
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenScrollProvider>(
      builder: (context, screenScroll, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Expanded(
                  child: PageView(
                    controller: _pageController,
                onPageChanged: (p) {
                  screenScroll.changePage(p);
                },
                children: [
                  FirstPage(),
                  SecondPage(),
                  ThirdPage(),
                  FourthPage()
                ],
              )),
              WelcomeScreenPagination(),
              BottomButtons(_pageController, screenScroll)
            ],
          ),
        );
      },
    );
  }
}
