import 'package:advanced_store/core/resources/manager_assets.dart';
import 'package:advanced_store/core/resources/manager_colors.dart';
import 'package:advanced_store/core/resources/manager_font_sizes.dart';
import 'package:advanced_store/features/splash/presentaion/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage(ManagerAssets.splash1),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ManagerAssets.splash2),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
