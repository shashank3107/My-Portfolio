import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/responsive.dart';
import 'package:my_portfolio/views/home/menu_drawer.dart';
import 'package:my_portfolio/views/home/top_bar_contents.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff261934), Color(0xFF6203AD)])),
      child: Stack(
        children: [
          // Image.asset(
          //   'assets/background_image.png',
          //   height: screenSize.height,
          //   width: screenSize.width,
          //   fit: BoxFit.cover,
          // ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: ResponsiveWidget.isSmallScreen(context)
                ? AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    centerTitle: true,
                    title: Text(
                      "PORTFOLIO",
                      style:
                          TextStyle(color: Colors.yellowAccent, fontSize: 26),
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size(screenSize.width, 15),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.white),
                        )),
                      ),
                    ),
                  )
                : PreferredSize(
                    preferredSize: Size(screenSize.width, 70),
                    child: TopBarContents(),
                  ),
            drawer: MenuDrawer(),
          ),
        ],
      ),
    );
  }
}
