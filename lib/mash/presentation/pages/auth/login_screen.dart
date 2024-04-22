import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_size.dart';
import 'package:mash/mash/presentation/utils/app_theme.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';

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
    return Stack(
      children: [
        Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              AppAssets.loginStackImage,
              color: Colors.purple.withOpacity(0.5),
            )),
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              // shrinkWrap: true,
              children: [
                const Spacer(),
                _mashIcon(),
                const Spacer(),
                _welcomeText(),
                const Spacer(),
                _userIDTextField(),
                sizedBox(30.0),
                _passwordTextField(),
                spacer10,
                _forgotPassWordText(context),
                const Spacer(),
                _loginButton(),
                const Spacer(),
                _footer(context)
              ],
            )),
      ],
    );
  }

  Widget _forgotPassWordText(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
          onPressed: () {
            GoRouter.of(context).pushNamed(AppPages.forgotPassword);
          },
          child: Text(
            'Forgot Password ?',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: AppTextSize.t15,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }

  Widget _footer(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Version:10.6'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Powered By',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: AppTextSize.t13,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sign In',
          style: TextStyle(
            // letterSpacing: 0,
            fontSize: AppTextSize.t30,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        Text(
          'Sign in to your Registered Account.',
          style: TextStyle(
            // letterSpacing: 2,
            fontSize: AppTextSize.t14,
            fontWeight: FontWeight.w600,
            color: AppColors.greyText.withOpacity(0.8),

            height: 2,
          ),
        ),
        spacer10,
        Container(
          height: 5,
          width: 50,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              gradient: LinearGradient(colors: [
                AppColors.primaryColor,
                AppColors.primaryColor.withOpacity(0.5),
              ]),
              borderRadius: BorderRadius.circular(8)),
        )
      ],
    );
  }

  Widget _loginButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(double.infinity, SizeConfig.height(50))),
        onPressed: () {},
        child: Text(
          'SIGN IN',
          style: TextStyle(
            fontSize: AppTextSize.t16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _userIDTextField() {
    return CommonTextField(
        title: 'User Id',
        prefix: Padding(
          padding: const EdgeInsets.all(12),
          child: assetFromSvg(
            AppAssets.user,
            height: 20,
            color: AppColors.black,
          ),
        ));
  }

  Widget _passwordTextField() {
    return CommonTextField(
        title: 'Password',
        passwordField: true,
        prefix: Padding(
          padding: const EdgeInsets.all(12),
          child: assetFromSvg(
            AppAssets.password,
            height: 20,
            color: AppColors.black,
          ),
        ));
  }

  sizedBox(height) {
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
