import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skype_clone/srceens/pageViews/chat_list_srceen.dart';
import 'package:skype_clone/utlis/universal_variables.dart';

class HomeSrceen extends StatefulWidget {
  @override
  _HomeSrceenState createState() => _HomeSrceenState();
}

class _HomeSrceenState extends State<HomeSrceen> {
  PageController pageController;

  int _page = 0;
  double _lableFontsize = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UniversalVariables.blackColor,
      body: PageView(
        children: <Widget>[
          Container(
            child: ChatListSrceen(),
          ),
          Center(
              child: Text(
            "Call Logs",
            style: TextStyle(color: Colors.white),
          )),
          Center(
              child: Text(
            "Contact Sreen",
            style: TextStyle(color: Colors.white),
          )),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CupertinoTabBar(
            backgroundColor: UniversalVariables.blackColor,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: (_page == 0)
                      ? UniversalVariables.lightBlueColor
                      : UniversalVariables.greyColor,
                ),
                title: Text(
                  "Chats",
                  style: TextStyle(
                      fontSize: _lableFontsize,
                      color: (_page == 0)
                          ? UniversalVariables.lightBlueColor
                          : Colors.grey),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.call,
                  color: (_page == 1)
                      ? UniversalVariables.lightBlueColor
                      : UniversalVariables.greyColor,
                ),
                title: Text(
                  "Chats",
                  style: TextStyle(
                      fontSize: _lableFontsize,
                      color: (_page == 1)
                          ? UniversalVariables.lightBlueColor
                          : Colors.grey),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.contact_phone,
                  color: (_page == 2)
                      ? UniversalVariables.lightBlueColor
                      : UniversalVariables.greyColor,
                ),
                title: Text(
                  "Chats",
                  style: TextStyle(
                      fontSize: _lableFontsize,
                      color: (_page == 2)
                          ? UniversalVariables.lightBlueColor
                          : Colors.grey),
                ),
              ),
            ],
            onTap: navigationTapped,
            currentIndex: _page,
          ),
        ),
      ),
    );
  }
}
