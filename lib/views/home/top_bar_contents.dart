import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  const TopBarContents({Key? key}) : super(key: key);

  @override
  State<TopBarContents> createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1.0, color: Colors.white),
      )),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          //  mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   width: screenSize.width / 2,
            // ),
            Text(
              "PORTFOLIO",
              style: TextStyle(color: Colors.yellowAccent, fontSize: 26),
            ),
            Spacer(),
            InkWell(
                onHover: (value) {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
                  setState(() {});
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HOME",
                      style: TextStyle(
                          color: _isHovering[0] ? Colors.yellow : Colors.white),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                )),
            SizedBox(width: screenSize.width / 30),
            InkWell(
                onHover: (value) {
                  value ? _isHovering[1] = true : _isHovering[1] = false;
                  setState(() {});
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "ABOUT",
                      style: TextStyle(
                          color: _isHovering[1] ? Colors.yellow : Colors.white),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                )),
            SizedBox(width: screenSize.width / 30),
            InkWell(
                onHover: (value) {
                  value ? _isHovering[2] = true : _isHovering[2] = false;
                  setState(() {});
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "SERVICES",
                      style: TextStyle(
                          color: _isHovering[2] ? Colors.yellow : Colors.white),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                )),
            SizedBox(width: screenSize.width / 30),
            InkWell(
                onHover: (value) {
                  value ? _isHovering[3] = true : _isHovering[3] = false;
                  setState(() {});
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "PROJECTS",
                      style: TextStyle(
                          color: _isHovering[3] ? Colors.yellow : Colors.white),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[3],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                )),
            SizedBox(width: screenSize.width / 30),
            InkWell(
                onHover: (value) {
                  value ? _isHovering[4] = true : _isHovering[4] = false;
                  setState(() {});
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "EXTRAS",
                      style: TextStyle(
                          color: _isHovering[4] ? Colors.yellow : Colors.white),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[4],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                )),
            SizedBox(width: screenSize.width / 30),
            InkWell(
                onHover: (value) {
                  value ? _isHovering[5] = true : _isHovering[5] = false;
                  setState(() {});
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "RESUME",
                      style: TextStyle(
                          color: _isHovering[5] ? Colors.yellow : Colors.white),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[5],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                )),
            //  SizedBox(width: screenSize.width / 30),
          ],
        ),
      ),
    );
  }
}
