import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:usio_kelasi_mobile/tools/constant.dart';
import 'package:usio_kelasi_mobile/tools/usioColors.dart';

import '../../widget/appBarWidget/appBarWidget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  DateFormat formatters = DateFormat('HH:mm \ndd/MM');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black100,
      appBar: appBarWidget(
          "Bonjour Oslovie", "Bienvenue très cher !", CupertinoIcons.bell),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
          child: _dataPage(),
        ),
      ),
    );
  }

  Widget _dataPage() {
    return Column(
      children: [
        _header(),
        _card(),
        _partner(),
        _activity(),
      ],
    );
  }

  Widget _header() {
    return Container(
      padding: const EdgeInsets.all(10),
      height: height * 0.12,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://www.shutterstock.com/fr/blog/wp-content/uploads/sites/2/2020/05/3_Use-Gradients-in-Design-Blog-Images-Minimalist-Black-1.jpg?w=760"),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nsole Oslovie",
                style: TextStyle(color: Colors.white, fontSize: width * 0.035),
                textAlign: TextAlign.start,
              ),
              Text(
                "C.S Mgr Moke",
                style: TextStyle(color: Colors.white, fontSize: width * 0.05, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            child: Icon(
              Icons.school,
              size: 50,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _card() {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            color: black400,
            elevation: 1.5,
            child: SizedBox(
              width: width * 0.25,
              height: height * 0.12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.timer_fill,
                    size: width * 0.1,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Horaire',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: red400,
            elevation: 1.5,
            child: SizedBox(
              width: width * 0.25,
              height: height * 0.12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.person_alt,
                    size: width * 0.1,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Conduite',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.blueAccent,
            elevation: 1.5,
            child: SizedBox(
              width: width * 0.25,
              height: height * 0.12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.query_stats,
                    size: width * 0.1,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Evaluation',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _partner() {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/2/29/Harvard_shield_wreath.svg/1200px-Harvard_shield_wreath.svg.png"),
              ),
              Text("Harvard"),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.licdn.com/dms/image/D4E0BAQFPvw81YlPXiA/company-logo_100_100/0/1687877318570?e=1698278400&v=beta&t=klHlTnOX1ju9RaM5X23X_bxoz8Vegz1ldWkeW3cSeQI"),
              ),
              Text("Jiwe"),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage("https://media.licdn.com/dms/image/C4E0BAQFi9vhJjTDjZQ/company-logo_100_100/0/1656230230307?e=1698278400&v=beta&t=H4_7JyOm-7RDkSyPoJMws4LvhmujUk8g57_8EHe36K8"),
              ),
              Text("Usio"),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage("https://seeklogo.com/images/M/MIT-logo-73A348B3DB-seeklogo.com.png"),
              ),
              Text("MIT"),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage("https://cdn.dribbble.com/users/303272/screenshots/13632535/projeto5.png"),
              ),
              Text("Figma"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _activity() {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "Recents activity",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.045
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Pas encore de notifications");
                },
                child: Text(
                  "See all",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: black400
                  ),
                ),
              )
            ],
          ),
          _listActivity(),
        ],
      ),
    );
  }

  Widget _listActivity() {
    return Container(
      height: height * 0.45,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            // Le itemBuilder est appelé pour construire chaque élément de la liste
            // en fonction de l'index fourni.

            // Exemple : Créer un ListTile avec un numéro d'index
            return _oneActivity();
          },
          itemCount: 5
      ),
    );
  }

  Widget _oneActivity() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const CircleAvatar(
        backgroundImage: NetworkImage("https://sgadf.com/Upload/img/0developCategoryGADF-Shivam%20Thakur-mm.jpg"),
      ),
      title: Text(
        "Activités",
        style: TextStyle(
          fontSize: width * 0.035,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        "Contenue de l'activités",
        style: TextStyle(
          fontSize: width * 0.025,
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: Text(""
          "${formatters.format(DateTime.now())}"
      ),
    );
  }
}
