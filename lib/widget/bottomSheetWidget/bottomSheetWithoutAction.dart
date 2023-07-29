import 'package:flutter/material.dart';
import 'package:usio_kelasi_mobile/tools/constant.dart';

import '../../service/ColorService.dart';

  showBottom(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return Container(
            padding: EdgeInsets.all(width * 0.045),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Ecris ton problème"),
                  SizedBox(height: height * 0.03,),
                  const Text("Ecris ta description ici pour être plus efficace"),
                  SizedBox(height: height * 0.07,),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: UsioColor.black[400],
                        fixedSize: Size(width, 60),
                        minimumSize: const Size.fromHeight(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))
                    ),
                    icon: Icon(
                        Icons.thumb_up,
                      color: Colors.white,
                      size: width * 0.07,
                    ),
                    label: Text(
                        'Compris',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.045
                      ),
                    ),
                  ),
                ],
              ),
          );
        }
    );
  }