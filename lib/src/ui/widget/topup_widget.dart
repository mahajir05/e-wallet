import 'package:flutter/material.dart';

class TopUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8),
          child: Text('Top Up Coins (Rp)'),
        ),

        new GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
          itemCount: 12,
          itemBuilder: (context, index) => Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Center(
              child: Text('$index')
            ),
          )
        )
      ],
    );
  }
}