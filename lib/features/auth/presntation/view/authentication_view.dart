import 'package:flutter/material.dart';
import 'package:pet_app/core/resources/manager_assets.dart';
import 'package:pet_app/core/resources/manager_font_sizes.dart';
import 'package:pet_app/core/resources/manager_font_weight.dart';
import 'package:pet_app/core/resources/manager_height.dart';
import 'package:pet_app/core/resources/manager_strings.dart';
import 'package:pet_app/core/resources/manager_width.dart';

import '../../../../core/resources/manager_colors.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsetsDirectional.only(top: ManagerHeight.h111),
              width: ManagerWidth.w180,
              height: ManagerHeight.h132,
              child: Image.asset(ManagerAssets.splash1),
            ),
          ),
          SizedBox(
            height: ManagerHeight.h20,
          ),
          Text(
            ManagerStrings.welcomeTo,
            style: TextStyle(
                fontSize: ManagerFontSizes.s24,
                fontWeight: ManagerFontWeight.regular),
          ),
          SizedBox(
            height: ManagerHeight.h100,
          ),
          Container(
            width: ManagerWidth.w343,
            height: ManagerHeight.h51,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: ManagerColors.primaryColor,
                  minimumSize: Size(ManagerWidth.w343, ManagerHeight.h51)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ManagerStrings.createAccount,
                    style: TextStyle(color: ManagerColors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: ManagerHeight.h16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ManagerStrings.existingMember,
                style: TextStyle(
                    color: ManagerColors.primaryColor,
                    fontWeight: ManagerFontWeight.regular,


                ),
              ),
              InkWell(
                child: Text(
                  ManagerStrings.loginHere,
                  style: TextStyle(
                      color: ManagerColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: ManagerColors.primaryColor
                      ),
                ),
                onTap: () {
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
