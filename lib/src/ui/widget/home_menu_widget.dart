import 'package:flutter/material.dart';

class HomeMenuWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  final menuTap;

  const HomeMenuWidget({Key key, this.iconData, this.title, this.menuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: menuTap,
      child: Container(
        //color: (index % 2 == 0) ? Colors.redAccent : Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              iconData,
              size: 40,
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            )
          ],
        ),
      ),
    );
  }
}