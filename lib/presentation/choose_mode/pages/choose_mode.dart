import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding:const EdgeInsets.symmetric(
              vertical: 40, 
              horizontal: 40
            ),
            decoration:const  BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImages.chooseModeBg,
                )
              )
            ),
          ), 
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      AppVectors.logo,
                    ),
                  ),
                  const Spacer(), 
                  Text(
                    "Choose Mode",
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white, 
                      fontWeight: FontWeight.bold, 
                      fontSize: 18
                    ),
                  ),
                  const SizedBox(height: 21,), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xff30393c).withOpacity(0.5), 
                                  shape: BoxShape.circle
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.moon,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15), 
                          Text(
                            'Dark Mode', 
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.grey, 
                              fontWeight: FontWeight.w500, 
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 40),
                      Column(
                        children: [
                          ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xff30393c).withOpacity(0.5), 
                                  shape: BoxShape.circle
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.sun,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15), 
                          Text(
                            'Light Mode', 
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColors.grey, 
                              fontWeight: FontWeight.w500, 
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50), 
                  BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const ChooseModePage()
                        )
                      );
                    }, 
                    title: 'Continue',
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}