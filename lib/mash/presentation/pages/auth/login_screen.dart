import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_theme.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: AppThemes.mainTheme,
    debugShowCheckedModeBanner: false,
    home: const LoginScreen(),
  ));
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _loginBody(context),
    );
  }

  _loginBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        shrinkWrap: true,
        children: [
          sizedBox(20.0),
          _mashIcon(),
          sizedBox(80.0),
          _welcomeText(),
          sizedBox(90.0),
          _userIDTextField(),
          sizedBox(30.0),
          _passwordTextField(),
          sizedBox(10.0),
          _forgotPassWordText(context),
          sizedBox(60.0),
          _loginButton(),
          sizedBox(50.0),
          _footer(context)
        ],
      )
    );
  }

  Align _forgotPassWordText(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
          onPressed: () {
            GoRouter.of(context).pushNamed(AppPages.forgotPassword);
          },
          child: const Text(
            'Forgot Password ?',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }

  Widget _footer(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const Text('Version:10.6'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Powered By',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              spacerWidth10,
              SizedBox(
                height: SizeConfig.height(20),
                child: Image.asset(AppAssets.manappuramLogo),
              ),
              SizedBox(
                height: SizeUtility(context).height * 0.14,
              )
            ],
          ),
        ],
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
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'WELCOME',
          style: TextStyle(
              letterSpacing: 2, fontSize: 35, fontWeight: FontWeight.w700),
        ),
        Text(
          'Sign in to Continue.',
          style: TextStyle(
              letterSpacing: 2, fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
  


  Widget _loginButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(double.infinity, 50)),
        onPressed: () {},
        child: const Text(
          'SIGN IN',
        ));
  }

  Widget _userIDTextField() {
    return CommonTextField(
      title: 'User Id',
      prefix: const Icon(
        LineIcons.user,
      ),
    );
  }

  Widget _passwordTextField() {
    return CommonTextField(
      title: 'Password',
      passwordField: true,
      prefix: const Icon(
        LineIcons.lock,
        color: Colors.black,
      ),
    );
  }


  sizedBox(height){
    return SizedBox(
      height: SizeConfig.height(height),
    );
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
