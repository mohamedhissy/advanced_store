import 'package:advanced_store/core/resources/manager_font_sizes.dart';
import 'package:advanced_store/core/resources/manager_font_weight.dart';
import 'package:advanced_store/core/resources/manager_height.dart';
import 'package:advanced_store/core/resources/manager_strings.dart';
import 'package:advanced_store/core/resources/manager_width.dart';
import 'package:advanced_store/features/auth/presentation/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../routes/routes.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (controller) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: ManagerWidth.w160,
                          height: ManagerHeight.h160,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(ManagerAssets.auth2),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: ManagerWidth.w150,
                          height: ManagerHeight.h150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(ManagerAssets.auth1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: ManagerWidth.w144,
                  height: ManagerHeight.h82,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ManagerAssets.auth5),
                    ),
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                      child: Text(
                        ManagerStrings.signIn,
                        style: TextStyle(
                          fontSize: ManagerFontSizes.s24,
                          fontWeight: ManagerFontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ManagerHeight.h30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                      child: Container(
                        child: Text(
                          ManagerStrings.emailOrMobileNumber,
                          style: TextStyle(
                            fontSize: ManagerFontSizes.s20,
                            fontWeight: ManagerFontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: controller.emailTextEditingController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(ManagerRadius.r10)),
                          borderSide: BorderSide(
                            color: ManagerColors.bgColorTextField,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(ManagerRadius.r10)),
                          borderSide: BorderSide.none,
                        ),
                        hintText: ManagerStrings.enterYourEmailOrMobileNumber,
                        hintStyle: TextStyle(
                            color: ManagerColors.bgColorTextFieldString),
                        // labelText: ManagerStrings.enterYourEmailOrMobileNumber,
                        // labelStyle: TextStyle(
                        //   color: ManagerColors.bgColorTextFieldString,
                        // ),
                        filled: true,
                        fillColor: ManagerColors.bgColorTextField,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                      child: Container(
                        child: Text(
                          ManagerStrings.password,
                          style: TextStyle(
                            fontSize: ManagerFontSizes.s20,
                            fontWeight: ManagerFontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: controller.passwordTextEditingController,
                      obscureText: controller.showPassword,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(ManagerRadius.r10)),
                          borderSide: BorderSide(
                            color: ManagerColors.bgColorTextField,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(ManagerRadius.r10)),
                          borderSide: BorderSide.none,
                        ),
                        hintText: ManagerStrings.enterPassword,
                        hintStyle: TextStyle(
                            color: ManagerColors.bgColorTextFieldString),
                        // labelText: ManagerStrings.enterPassword,
                        // labelStyle: TextStyle(
                        //   color: ManagerColors.bgColorTextFieldString,
                        // ),
                        suffixIcon: IconButton(
                            onPressed: () =>
                                controller.changePasswordVisibility(),
                            icon: controller.showPassword
                                ? Icon(Icons.visibility_off)
                                : Icon(
                                    Icons.visibility,
                                    color: ManagerColors.primaryColor,
                                  )),
                        suffixIconColor: ManagerColors.color,
                        filled: true,
                        fillColor: ManagerColors.bgColorTextField,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                      child: GestureDetector(
                        // Use GestureDetector for better control
                        onTap: () {
                          // final controller = Get.find<AuthController>(); // Ensure controller is found
                          controller
                              .changeCheckBoxValue(); // Toggle checkbox value
                        },
                        child: Container(
                          width: ManagerWidth.w22,
                          height: ManagerHeight.h22,
                          decoration: BoxDecoration(
                            color: controller.checkboxValue
                                ? ManagerColors.primaryColor
                                : ManagerColors.white,
                            border: Border.all(
                              color: controller.checkboxValue
                                  ? ManagerColors.primaryColor
                                  : ManagerColors.primaryColor,
                              width: ManagerWidth.w2,
                            ),
                            borderRadius:
                                BorderRadius.circular(ManagerRadius.r8),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                      child: Text(
                        ManagerStrings.didYouforgetYourPassword,
                        style: TextStyle(
                            fontSize: ManagerFontSizes.s14,
                            color: ManagerColors.iconDetails),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ManagerHeight.h16,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.preformLogin(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ManagerColors.transparent,
                      elevation: 0,
                      minimumSize: Size(
                        ManagerWidth.w120,
                        ManagerHeight.h37,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(ManagerRadius.r8),
                        side: BorderSide(
                            color: ManagerColors.loginButton,
                            width: ManagerWidth.w2),
                      ),
                    ),
                    child: Text(
                      ManagerStrings.login,
                      style: TextStyle(
                        color: ManagerColors.black,
                      ),
                    )),
                SizedBox(
                  height: ManagerHeight.h46,
                ),
                Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: ManagerWidth.w120,
                          height: ManagerHeight.h120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(ManagerAssets.auth4))),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: ManagerWidth.w100,
                          height: ManagerHeight.h120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(ManagerAssets.auth3))),
                        ),
                      ],
                    ),
                    Positioned(
                        bottom: ManagerHeight.h37,
                        right: ManagerWidth.w75,
                        left: ManagerWidth.w75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              ManagerStrings.dontHaveAnAccount,
                              style: TextStyle(
                                  fontSize: ManagerFontSizes.s16,
                                  fontWeight: ManagerFontWeight.w400),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, Routes.registerView);
                              },
                              child: Text(
                                ManagerStrings.signUp,
                                style: TextStyle(
                                  fontWeight: ManagerFontWeight.regular,
                                  fontSize: ManagerFontSizes.s16,
                                  color: ManagerColors.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
