import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usio_kelasi_mobile/tools/constant.dart';
import 'package:usio_kelasi_mobile/tools/usioColors.dart';

appBarWidget(String title, String subtitle, var icon) {
  return CupertinoNavigationBar(
    border: Border.all(color: Colors.transparent),
    backgroundColor: black100,
    leading: Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 0, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: width * 0.04),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            subtitle,
            style:
                TextStyle(fontSize: width * 0.05, fontWeight: FontWeight.w500),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    trailing: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: black200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Badge(
            child: Icon(
          icon,
          size: 20,
        ))),
  );
}
