import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:usio_kelasi_mobile/service/ColorService.dart';

import '../../tools/constant.dart';
import '../../tools/usioColors.dart';
import '../home/mainView.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _passwordVisible = false;
  bool _rememberMe = false;

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _schoolController = TextEditingController();

  _closePage() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return _closePage();
        },
        child: Scaffold(
          backgroundColor: black100,
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: _dataPage(),
            ),
          ),
        ));
  }

  Widget _dataPage() {
    return SizedBox(
      child: Column(
        children: [_imageContaitns(), _loginView()],
      ),
    );
  }

  Widget _imageContaitns() {
    return Container(
      height: height * 0.4,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/usio_kelasi.png"),
      )),
    );
  }

  Widget _loginView() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Se connecter",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: width * 0.055),
            ),
            subtitle: Text(
              "Entrez vos identifiants pour pouvoir acceder à la plateforme",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: UsioColor.black[400],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.shade600,
                        width: 0.5,
                        style: BorderStyle.solid))),
            child: TextField(
              controller: _schoolController,
              decoration: InputDecoration(
                icon: Icon(Icons.person, color: UsioColor.black[400]),
                labelText: "Nom de l'école",
                labelStyle:
                    TextStyle(fontSize: 16, color: UsioColor.black[400]),
                hintText: "Saisissez le nom de l'école",
                hintStyle: TextStyle(
                  color: UsioColor.black[400],
                  fontSize: 14,
                  height: 2.0,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.shade600,
                        width: 0.5,
                        style: BorderStyle.solid))),
            child: TextField(
              controller: _passwordController,
              obscureText: _passwordVisible,
              decoration: InputDecoration(
                icon: Icon(Icons.lock, color: UsioColor.black[400]),
                labelText: "Mot de passe",
                labelStyle:
                    TextStyle(fontSize: 16, color: UsioColor.black[400]),
                hintText: "Saisissez le mot de passe",
                hintStyle: TextStyle(
                  color: UsioColor.black[400],
                  fontSize: 14,
                  height: 2.0,
                ),
                border: InputBorder.none,
                suffixIcon: (_rememberMe)
                    ? const Icon(null)
                    : IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          //color: Theme.of(context).primaryColorDark,
                          color: blackPrimary,
                          size: 20,
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                //helperText: "Hello",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const Text(
                'Se souvenir de moi',
                style: TextStyle(fontSize: 16.0),
              ), //Text
              const SizedBox(width: 10), //SizedBox
              /** Checkbox Widget **/
              CupertinoSwitch(
                activeColor: red500,
                value: (_rememberMe) ? true : false,
                onChanged: (bool? value) {
                  setState(() {
                    _rememberMe = value!;
                    print([">>>>>>>remember me : $_rememberMe"]);
                  });
                },
              ), //Checkbox
            ], //<Widget>[]
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainView()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: UsioColor.red[500],
                fixedSize: Size(width, 60),
                minimumSize: const Size.fromHeight(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))),
            child: Text(
              "Connexion",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.045),
            ),
          ),
          const SizedBox(
            height: 40,
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
          ),
        ],
      ),
    );
  }
}
