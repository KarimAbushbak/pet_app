import 'package:flutter/material.dart';
import 'package:pet_app/core/resources/manager_assets.dart';
import 'package:pet_app/core/resources/manager_font_sizes.dart';
import 'package:pet_app/core/resources/manager_font_weight.dart';
import 'package:pet_app/core/resources/manager_height.dart';
import 'package:pet_app/core/resources/manager_strings.dart';
import 'package:pet_app/core/resources/manager_width.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsetsDirectional.only(top: ManagerHeight.h111),
              alignment: Alignment.center,
              height: ManagerHeight.h132,
              width: ManagerWidth.w184,
              child: Image.asset(ManagerAssets.splash1),
            ),
          ),
          SizedBox(height: ManagerHeight.h20,),
          Container(
            width:ManagerWidth.w370,
            height: ManagerHeight.h310,
            child: Column(
              children: [
                Container(
                  width: ManagerWidth.w260,
                  height: ManagerHeight.h34,
                  child: Text(
                    ManagerStrings.appName,
                    style: TextStyle(
                      fontWeight: ManagerFontWeight.regular,
                      fontSize: ManagerFontSizes.s24
                    ),
                  ),
                ),
                Container(
                  height: ManagerHeight.h274,
                  child: Image.asset(ManagerAssets.splash2),
                )
              ],
            ),
          )



        ],
      ),
    );
  }
}
