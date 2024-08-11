import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/data/models/auth/signin_user_req.dart';
import 'package:spotify/domain/usecases/auth/signin.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';
import 'package:spotify/presentation/home/pages/home.dart';

import '../../../service_locator.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController _email = TextEditingController(); 
  final TextEditingController _password = TextEditingController(); 

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
      body: SingleChildScrollView(
        child: Padding(
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
                onPressed: () async {
                  var result = await sl<SigninUseCase>().call(
                    params: SigninUserReq(
                      email: _email.text.toString(), 
                      password: _password.text.toString()
                    )
                  ); 
                  result.fold(
                    (l) {
                      var snackbar = SnackBar(
                        content: Theme(
                          data: Theme.of(context).copyWith(
                            textTheme:  TextTheme(bodyLarge: GoogleFonts.plusJakartaSans(color: Colors.white)),
                          ),
                          child: Text(l),
                        ),
                        backgroundColor: AppColors.primary,
                        behavior: SnackBarBehavior.floating,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                    (r) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) => const HomePage()),
                        (route) => false
                      );
                    }
                  );
                },
                title: 'Sign In',
              )
            ],
          ),
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


  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _email,
      decoration: const InputDecoration(
        hintText: 'Enter Email', 
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
      decoration: const InputDecoration(
        hintText: 'Password', 
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
      obscureText: true,
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
                MaterialPageRoute(builder: (BuildContext context) => SignupPage()) 
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