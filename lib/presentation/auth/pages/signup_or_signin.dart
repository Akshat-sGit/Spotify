import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/presentation/auth/pages/signin.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppBar(), 
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern,
            ),
          ), 
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              AppImages.authBg, 
              fit: BoxFit.cover,
               width: MediaQuery.of(context).size.width,
            ),
          ),
          Align(
            alignment: Alignment.center, 
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppVectors.logo,
                  ), 
                  const SizedBox(height: 55),
                  Text(
                    'Enjoy Listening To Music', 
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.bold, 
                      fontSize: 26, 
                    ),
                  ), 
                  const SizedBox(height: 21), 
                  Text(
                    'Spotify is a proprietary Swedish audio streaming and media services provider', 
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500, 
                      fontSize: 13,
                      color: AppColors.grey 
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30), 
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: (){
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => SignupPage() 
                        )
                      );
                          },
                          title: 'Register',
                        ),
                      ), 
                      const SizedBox(width: 20), 
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed:() {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>  SignInPage() 
                            )
                          );
                          }, 
                          child: Text(
                            'Sign in', 
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.bold, 
                              fontSize: 16, 
                              color: context.isDarkMode ? Colors.white : Colors.black, 
                            ),
                          )
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}