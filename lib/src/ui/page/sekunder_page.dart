import 'package:flutter/material.dart';
import 'package:proj_first_test/src/ui/widget/amount_bar_widget.dart';

class SekunderPage extends StatelessWidget {
  final String titleAppBar;
  final widgetContent;

  const SekunderPage({Key key, @required this.titleAppBar, this.widgetContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            new Container(
              height: 225,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
            ),

            new Positioned(
              top: 80,
              bottom: 10,
              left: 10,
              right: 10,
              child: Hero(
                tag: 'amountbar',
                child: Material(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightGreen,
                    ),
                    child: widgetContent,
                    // child: Column(
                    //   mainAxisSize: MainAxisSize.max,
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: <Widget>[
                    //     new AmountBarwidget(
                    //       amount: '1.000.000.000',
                    //       ketAmount: 'Available Coins',
                    //       bgColor: Colors.lightGreen,
                    //       refreshPressed: () {},
                    //       qrCodePressed: () {},
                    //     ),

                    //     new Divider(color: Colors.white,),

                    //     new Expanded(child: Center(child: Text('data'),))
                    //   ],
                    // ),
                  ),
                ),
              )
            ),
            
            new AppBar(
              title: Text(titleAppBar),
              centerTitle: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              // actions: <Widget>[
              //   new IconButton(
              //     icon: Icon(Icons.notifications), 
              //     onPressed: () {}
              //   ),
              // ],
            ),
          ],
        ),
      ),
    );
  }
}