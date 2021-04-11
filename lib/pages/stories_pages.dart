import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:snapshat_clone/theme/colors.dart';

class StoriesPage extends StatefulWidget {
  @override
  _StoriesPageState createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(shape: BoxShape.circle),
              color: black.withOpacity(0.1),
              child: Icon(
                Entypo.user,
                color: primary,
                size: 23,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(shape: BoxShape.circle),
              color: black.withOpacity(0.1),
              child: Icon(
                Feather.search,
                color: darkGrey,
                size: 23,
              ),
            )
          ],
        ),

        Text(
          "Stories",
          style: TextStyle(
           fontWeight: FontWeight.bold,
           color: black
          ),
        )

        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(shape: BoxShape.circle),
              color: black.withOpacity(0.1),
              child: Icon(
                Feather.user_plus,
                color: darkGrey,
                size: 23,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(shape: BoxShape.circle),
              color: black.withOpacity(0.1),
              child: Icon(
                Entypo.dots_three_horizontal,
                color: darkGrey,
                size: 23,
              ),
            )
          ],
        )

      ]),
    );
  }
}
