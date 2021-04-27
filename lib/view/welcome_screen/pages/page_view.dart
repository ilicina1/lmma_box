import 'package:flutter/material.dart';
import 'package:lmma_box/providers/screen_scroll.dart';
import 'package:lmma_box/view/welcome_screen/pages/fourth_page.dart';
import 'package:lmma_box/view/welcome_screen/widgets/welcome_screen_pagination.dart';
import 'package:provider/provider.dart';

class PageScroller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Consumer<ScreenScrollProvider>(
              builder: (context, screenScroll, child) {
                return PageView(
                  onPageChanged: (p) {
                    screenScroll.changePage(p);
                  },
                  children: [FourthPage(), FourthPage(), FourthPage(), FourthPage()],
                );
              },
            ),
          ),
          Consumer<ScreenScrollProvider>(
              builder: (context, screenScroll, child) {
            return WelcomeScreenPagination(page: screenScroll.page);
          }),
          Container(
            width: 275,
            height: 45,
            child: FloatingActionButton.extended(
              onPressed: () {
                // Add your onPressed code here!
              },
              label: const Text(
                'Get Started',
                style: TextStyle(fontSize: 16, color: Colors.brown),
              ),
              backgroundColor: Colors.yellow,
              elevation: 0,
            ),
          )
        ],
      ),
    );
  }
}
