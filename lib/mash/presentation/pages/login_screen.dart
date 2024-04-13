import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_theme.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      MaterialApp(
    theme: AppThemes.mainTheme,
    debugShowCheckedModeBanner:false,
    home: const LoginScreen(),));
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: _loginBody() ,
    );
  }

  _loginBody() {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            spacer20,
            _mashIcon(),
            spacer80,
            _welcomeText(),
            spacer120,
            _userIDTextField(),
            spacer30,
            _passwordTextField(),
            spacer80,
            _loginButton()
          ],
        ),
      ),
    );
  }

  Widget _mashIcon() {
    return Center(
      child: SvgPicture.asset(
          AppAssets.mashLoginLogo,
      ),
    );
  }

 Widget _welcomeText() {
   return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text('WELCOME', style: TextStyle(letterSpacing: 2,fontSize: 35,fontWeight: FontWeight.w700),),
       Text('Sign in to Continue.', style: TextStyle(letterSpacing: 2,fontSize: 35,fontWeight: FontWeight.w700),),

     ],
   );
 }


 Widget _loginButton() {
    return ElevatedButton(onPressed: (){},
        child: const Text('SIGN IN',));
  }

  Widget _userIDTextField() {
    return const CommonTextField(title: 'User Id',showSuffixIcon: true,prefix:Icon(LineIcons.user,),);
  }

   Widget _passwordTextField() {
    return const CommonTextField(title: 'Password',passwordField: true,showSuffixIcon: true,prefix: Icon(LineIcons.lock,color: Colors.black,),);
   }

}

/*
class TextFieldWithIcon extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool isPassword;

  const TextFieldWithIcon({
    required this.icon,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintText,
        suffixIcon: isPassword ? const Icon(Icons.remove_red_eye_outlined): null,
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
    );
  }*/
