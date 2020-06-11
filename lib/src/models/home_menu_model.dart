import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proj_first_test/src/ui/widget/topup_widget.dart';

class HomeMenuModel {
  final IconData iconData;
  final String title;
  final Color bgColor;
  final widgetContent;

  HomeMenuModel({this.iconData, this.title, this.bgColor, this.widgetContent});

  static BuildContext context;
  static List<HomeMenuModel> homeMenu () => [
    HomeMenuModel(
      iconData: Icons.shopping_basket,
      title: 'Buy',
      bgColor: Colors.transparent,
      widgetContent: TopUpWidget(),
    ),
    HomeMenuModel(
      iconData: Icons.send,
      title: 'Send Coins',
      bgColor: Colors.transparent,
      widgetContent: TopUpWidget(),
    ),
    HomeMenuModel(
      iconData: Icons.monetization_on,
      title: 'Top Up',
      bgColor: Colors.transparent,
      widgetContent: TopUpWidget(),
    ),
    HomeMenuModel(
      iconData: Icons.history,
      title: 'History',
      bgColor: Colors.transparent,
      widgetContent: TopUpWidget(),
    ),
    HomeMenuModel(
      iconData: Icons.notifications_none,
      title: 'Notification',
      bgColor: Colors.transparent,
      widgetContent: TopUpWidget(),
    ),
    HomeMenuModel(
      iconData: MdiIcons.logout,
      title: 'Logout',
      bgColor: Colors.transparent,
      widgetContent: TopUpWidget(),
    )
  ];
}