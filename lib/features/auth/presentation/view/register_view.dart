// import 'package:advanced_store/core/resources/manager_strings.dart';
// import 'package:advanced_store/features/auth/presentation/view/registration_tab.dart';
// import 'package:flutter/material.dart';
//
// import '../../../../core/resources/manager_assets.dart';
// import '../../../../core/resources/manager_colors.dart';
// import '../../../../core/resources/manager_height.dart';
// import '../../../../core/resources/manager_width.dart';
//
// class RegisterView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Container(
//                         width: ManagerWidth.w109,
//                         height: ManagerHeight.h100,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 fit: BoxFit.cover,
//                                 image: AssetImage(ManagerAssets.auth1))),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Container(
//                         width: ManagerWidth.w88,
//                         height: ManagerWidth.w100,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 fit: BoxFit.fill,
//                                 image: AssetImage(ManagerAssets.auth2))),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Container(
//                 width: ManagerWidth.w144,
//                 height: ManagerHeight.h82,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage(ManagerAssets.auth5))),
//               ),
//               SizedBox(
//                 height: ManagerHeight.h40,
//               ),
//               TabBar(
//                 indicatorColor: Colors.blue,
//                 tabs: [
//                   Tab(
//                     text: ManagerStrings.email,
//                   ),
//                   Tab(text: ManagerStrings.phoneNumber),
//                 ],
//               ),
//               SizedBox(height: 16),
//               Container(
//                 height: 490,
//                 child: TabBarView(
//                   children: [
//                     RegistrationForm(isEmailTab: true),
//                     RegistrationForm(isEmailTab: false),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: ManagerHeight.h12,
//               ),
//               ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: ManagerColors.transparent,
//                     elevation: 0,
//                     minimumSize: Size(
//                       ManagerWidth.w120,
//                       ManagerHeight.h38,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                       side: BorderSide(
//                           color: ManagerColors.button,
//                           width: 2),
//                     ),
//                   ),
//                   child: Text(ManagerStrings.signUp)),
//               Stack(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         width: ManagerWidth.w120,
//                         height: ManagerHeight.h120,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 fit: BoxFit.cover,
//                                 image: AssetImage(ManagerAssets.auth3))),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         width: ManagerWidth.w100,
//                         height: ManagerHeight.h120,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 fit: BoxFit.cover,
//                                 image: AssetImage(ManagerAssets.auth4))),
//                       ),
//                     ],
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:advanced_store/core/resources/manager_colors.dart';
import 'package:advanced_store/features/auth/presentation/controller/auth_controller.dart';
import 'package:advanced_store/features/auth/presentation/view/registration_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../routes/routes.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (controller) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 160,
                              height: 160,
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
                              width: 150,
                              height: 150,
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
                      width: 144,
                      height: 82,
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
                            ManagerStrings.signUp,
                            style: TextStyle(
                              fontSize: ManagerFontSizes.s24,
                              fontWeight: ManagerFontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: ManagerHeight.h20,),
                    TabBar(
                      indicatorColor: ManagerColors.primaryColor,
                      labelColor: ManagerColors.black,
                      labelStyle: TextStyle(fontSize: ManagerFontSizes.s16),
                      tabs: [
                        Tab(
                          text: ManagerStrings.email,
                        ),
                        Tab(text: ManagerStrings.phoneNumber),
                      ],
                    ),
                    SizedBox(height: ManagerHeight.h20),
                    Container(
                      height: 700,
                      child: TabBarView(
                        children: [
                          RegistrationForm(isEmailTab: true),
                          RegistrationForm(isEmailTab: false),
                        ],
                      ),
                    ),
                    SizedBox(height: ManagerHeight.h20,),
                    ElevatedButton(
                        onPressed: () {
                          controller.performRegister(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ManagerColors.transparent,
                          elevation: 0,
                          minimumSize: Size(
                            ManagerWidth.w120,
                            ManagerHeight.h37,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                                color: ManagerColors.loginButton, width: 2),
                          ),
                        ),
                        child: Text(
                          ManagerStrings.login,
                          style: TextStyle(
                            color: ManagerColors.black,
                          ),
                        )),
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
                              children: [
                                Text(
                                  ManagerStrings.haveAnAccount,
                                  style: TextStyle(
                                      fontSize: ManagerFontSizes.s16,
                                      fontWeight: ManagerFontWeight.w400),
                                ),
                                SizedBox(width: ManagerWidth.w20,),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pushReplacementNamed(context, Routes.loginView);
                                  },
                                  child: Text(ManagerStrings.signIn,
                                    style: TextStyle(
                                      fontWeight: ManagerFontWeight.regular,
                                      fontSize: ManagerFontSizes.s16,
                                      color: ManagerColors.primaryColor,
                                    ),),
                                ),
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
