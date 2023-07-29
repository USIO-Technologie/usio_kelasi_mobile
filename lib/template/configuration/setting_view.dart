import 'package:flutter/material.dart';
import 'package:usio_kelasi_mobile/widget/appBarWidget/appBarWidget.dart';

import '../../tools/usioColors.dart';

class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black100,
      appBar: appBarWidget("Setting", "Paramètres", Icons.settings),
    );
  }
}
