import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signupText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo, 
          height: 40,
          width: 50,
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(height: 50,),
            _emailField(context),
            const SizedBox(height: 20,),
            _passwordField(context), 
            const SizedBox(height: 20,), 
            BasicAppButton(
              onPressed: () {},
              title: 'Create Account',
            )
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return Text(
      'Sign In', 
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.bold, 
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }

  // Widget _fullNameField(BuildContext context) {
  //   return TextField(
  //     decoration: const InputDecoration(
  //       hintText: 'Full Name', 
  //     ).applyDefaults(
  //       Theme.of(context).inputDecorationTheme
  //     ),
  //   );
  // }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Enter Email', 
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Password', 
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _signupText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Not a member?', 
            style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w500, 
              fontSize: 14, 
            ),
          ), 
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (BuildContext context) => const SignupPage()) 
              ); 
            },
            child: Text(
              'Register Now', 
              style: GoogleFonts.plusJakartaSans(
                
              ),
            )
          )
        ],
      ),
    );
  }

}