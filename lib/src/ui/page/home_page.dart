import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proj_first_test/src/models/home_menu_model.dart';
import 'package:proj_first_test/src/ui/page/sekunder_page.dart';
import 'package:proj_first_test/src/ui/widget/amount_bar_widget.dart';
import 'package:proj_first_test/src/ui/widget/home_menu_widget.dart';

class MyHomePage extends StatelessWidget {
  var homeMenu = HomeMenuModel.homeMenu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              //color: Colors.grey,
              child: Stack(
                children: <Widget>[
                  new Container(
                    height: 225,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new SizedBox(height: 20,),
                        new Text(
                          'Hello,',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white
                          ),
                        ),

                        new SizedBox(height: 10,),

                        new Text(
                          'Mahajir Taqarrub',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),

                  new Positioned(
                    top: 200,
                    bottom: 0,
                    left: 10,
                    right: 10,
                    child: Hero(
                      tag: 'amountbar',
                      child: Material(
                        child: AmountBarwidget(
                          amount: '1.000.000.000',
                          ketAmount: 'Available Coins',
                          bgColor: Colors.lightGreen,
                          refreshPressed: () {},
                          qrCodePressed: () {},
                        ),
                      ),
                    )
                  ),
                  
                  new AppBar(
                    title: Text('E-Wallet'),
                    centerTitle: false,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    actions: <Widget>[
                      new IconButton(
                        icon: Icon(Icons.notifications), 
                        onPressed: () => Navigator.of(context).push(
                          new PageRouteBuilder(
                            pageBuilder: (BuildContext context, _, __) {
                              return SekunderPage(titleAppBar: 'Notification');
                            },
                            transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
                              return new FadeTransition(
                                opacity: animation,
                                child: child
                              );
                            }
                          )
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),

            new Container(
              //color: Colors.blue,
              child: GridView.builder(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                itemCount: homeMenu.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ), 
                itemBuilder: (context, index) => HomeMenuWidget(
                  iconData: homeMenu[index].iconData,
                  title: homeMenu[index].title,
                  menuTap: () => index != 5 ? Navigator.of(context).push(
                    new PageRouteBuilder(
                      pageBuilder: (BuildContext context, _, __) {
                        return SekunderPage(
                          titleAppBar: homeMenu[index].title,
                          widgetContent: homeMenu[index].widgetContent,
                        );
                      },
                      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
                        return new FadeTransition(
                          opacity: animation,
                          child: child
                        );
                      }
                    )
                  ) : showDialog(
                    context: context,
                    builder: (_) => new CupertinoAlertDialog(
                          title: new Text("Logout"),
                          content: new Text("are you sure want to logout??"),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('no'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            FlatButton(
                              child: Text('yes'),
                              onPressed: () {},
                            )
                          ],
                        ))
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}