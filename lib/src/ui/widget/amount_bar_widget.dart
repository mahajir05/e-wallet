import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AmountBarwidget extends StatelessWidget {
  final Color bgColor;
  final String amount;
  final String ketAmount;
  final refreshPressed;
  final qrCodePressed;

  const AmountBarwidget({Key key, this.bgColor, this.amount, this.ketAmount, this.refreshPressed, this.qrCodePressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        amount,
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      new Text(
                        ketAmount,
                        style: TextStyle(
                          fontSize: 12
                        ),
                      )
                    ],
                  ),
                ),

                new IconButton(
                  icon: Icon(MdiIcons.refresh), 
                  onPressed: refreshPressed
                )
              ],
            )
          ),

          new VerticalDivider(
            color: Colors.white,
            width: 10,
          ),

          new Container(
            width: 50,
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(MdiIcons.qrcode,),
              iconSize: 32,
              onPressed: qrCodePressed
            ),
          )
        ],
      ),
    );
  }
}