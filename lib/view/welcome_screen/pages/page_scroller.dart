import 'package:flutter/material.dart';
import 'package:lmma_box/providers/screen_scroll.dart';
import 'package:lmma_box/view/welcome_screen/pages/fourth_page.dart';
import 'package:lmma_box/view/welcome_screen/pages/first_page.dart';
import 'package:lmma_box/view/welcome_screen/pages/second_page.dart';
import 'package:lmma_box/view/welcome_screen/pages/third_page.dart';
import 'package:lmma_box/view/welcome_screen/widgets/shared_widgets/bottom_buttons.dart';
import 'package:lmma_box/view/welcome_screen/widgets/shared_widgets/app_bar_widget.dart';
import 'package:lmma_box/view/welcome_screen/widgets/shared_widgets/welcome_screen_pagination.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PageScroller extends StatelessWidget {
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenScrollProvider>(
      builder: (context, screenScroll, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SafeArea(
                child: AppBarWidget(context),
              ),
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
                  FourthPage(),
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
