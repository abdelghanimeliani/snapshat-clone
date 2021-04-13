import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapshat_clone/data/button_icon.dart';
import 'package:snapshat_clone/pages/stories_pages.dart';
import 'package:snapshat_clone/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: getFooteer(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        StoriesPage(),
        StoriesPage(),
        StoriesPage(),
        StoriesPage(),
        StoriesPage(),
      ],
    );
  }

  Widget getFooteer() {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(color: black),
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(5, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = index;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      iconItems[index],
                      color: pageIndex == index
                          ? colorsItems[index]
                          : white.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(textItems[index],
                        style: TextStyle(
                            color: pageIndex == index
                                ? colorsItems[index]
                                : white.withOpacity(0.5),
                            fontSize: 11,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              );
            })),
      ),
    );
  }
}
