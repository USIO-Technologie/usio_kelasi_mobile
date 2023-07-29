import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usio_kelasi_mobile/service/ColorService.dart';
import 'package:usio_kelasi_mobile/template/configuration/setting_view.dart';
import 'package:usio_kelasi_mobile/template/home/homeView.dart';
import 'package:usio_kelasi_mobile/template/notification/notification_view.dart';
import 'package:usio_kelasi_mobile/template/profil/profil_view.dart';
import 'package:usio_kelasi_mobile/tools/usioColors.dart';

import '../../widget/appBarWidget/appBarWidget.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int index = 0;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  final screens = [
    const HomeView(),
    const ProfilView(),
    const NotificationView(),
    const SettingView(),
  ];

  final items = <Widget> [
    const Icon(CupertinoIcons.home, size: 25,),
    const Icon(CupertinoIcons.calendar, size: 25,),
    const Icon(Icons.school, size: 25,),
    const Icon(CupertinoIcons.settings, size: 25,),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black100,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationKey,
        items: items,
        buttonBackgroundColor: UsioColor.black[100],
        backgroundColor: const Color(0xFF737373),
        animationCurve: Curves.decelerate,
        animationDuration: const Duration(milliseconds: 600),
        index: index,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
