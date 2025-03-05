import 'package:flutter/material.dart';

import '../../../core/resources/manager_assets.dart';

class OutBoardingView extends StatelessWidget {
  const OutBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(ManagerAssets.outBoarding9),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
