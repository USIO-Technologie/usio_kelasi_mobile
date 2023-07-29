import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:usio_kelasi_mobile/service/ColorService.dart';
import 'package:usio_kelasi_mobile/template/login/loginView.dart';

import '../../tools/constant.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  _closePage() {
    if (kDebugMode) {
      print("close");
    }
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return WillPopScope(
        child: Scaffold(
          backgroundColor: UsioColor.black[100],
          body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(20),
                //height: height * 78,
                child: _dataPage()),
          ),
        ),
        onWillPop: () {
          return _closePage();
        });
  }

  Widget _dataPage() {
    return SizedBox(
      child: Column(
        children: [
          _imageContaitns(),
          _started()
        ],
      ),
    );
  }

  Widget _imageContaitns() {
    return Container(
      height: height * 0.55,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/usio_kelasi.png"),
          )),
    );
  }

  Widget _started() {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bienvenue sur",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.055,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Usio Kelasi",
                style: TextStyle(
                    color: UsioColor.red[500],
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.055),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: height * 0.35,
              child: Text(
                "Votre école à portée de main, où que vous soyez ! "
                "\nPlongez dans l'univers passionnant de l'éducation de vos enfants grâce à notre application mobile de gestion d'école",
                textAlign: TextAlign.center,
                style: TextStyle(color: UsioColor.black[300]),
              )),
          SizedBox(
            height: height * 0.03,
          ),
          SizedBox(
            height: 40,
            width: 60,
            child: Image.asset(
                "assets/loading.gif",
              width: 70,
              height: 50,
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginView()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: UsioColor.red[500],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))),
            child: Text(
              "Commencer",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: height * 0.07,
          ),
          const SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Copyrigth ©"),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Usio",
                  style: TextStyle(
                      color: UsioColor.red, decoration: TextDecoration.none),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
