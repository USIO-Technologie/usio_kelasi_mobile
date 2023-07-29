import 'package:flutter/material.dart';

import '../../tools/usioColors.dart';
import '../../widget/appBarWidget/appBarWidget.dart';
import '../../widget/bottomSheetWidget/bottomSheetWithoutAction.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({Key? key}) : super(key: key);

  @override
  _ProfilViewState createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black100,
      appBar: appBarWidget("Profil", "Profil", Icons.person),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await showBottom(context);
          },
          child: const Text("Fina"),
        ),
      ),
    );
  }
}
