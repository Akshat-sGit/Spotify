import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

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
                  AppImages.introBg,
                )
              )
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                  ),
                ),
                const Spacer(), 
                Text(
                  "Enjoy Listening To Music",
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold, 
                    fontSize: 18
                  ),
                ),
                const SizedBox(height: 21,), 
                Text(
                  "Discover new artists, create your playlists, and enjoy music anytime, anywhere. Get started now!",
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColors.grey, 
                    fontWeight: FontWeight.w500, 
                    fontSize: 13
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20,), 
                BasicAppButton(
                  onPressed: () {}, 
                  title: 'Get Started',
                ),
              ],
            ),
          ), 
          Container(
            color: Colors.black.withOpacity(0.15),
          )
        ],
      ),
    ); 
  }
}