import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
 const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  Timer? _timer;

  int _countDown = 30;

  bool _showResendButton = false;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countDown > 0) {
          _countDown--;
        } else {
          _showResendButton = true;
          _timer!.cancel();
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
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
          _phoneNumberField(),
          sizedBox(60.0),
          _sendOtpButton(context),
          sizedBox(20.0),
          _backToLoginText(context),
          sizedBox(40.0),
          _footer(context)
        ],
      ),
    );
  }

  Align _backToLoginText(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: TextButton(
          onPressed: () => GoRouter.of(context).pop(),
          child: const Text(
            'Back to login?',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }

  sizedBox(height){
    return SizedBox(
      height: SizeConfig.height(height),
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
                height: 20,
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
    return const Align(
      alignment: Alignment.topCenter,
      child: Text(
        'Reset Your Password.',
        style: TextStyle(
            letterSpacing: 2, fontSize: 30, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _sendOtpButton(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(double.infinity, 50)),
        onPressed: () =>
            GoRouter.of(context).pushNamed(AppPages.otpScreen),
        child: const Text(
          'SEND OTP',
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

  Widget _phoneNumberField() {
    return CommonTextField(
      title: 'Registered Phone Number',
      prefix: const Icon(
        LineIcons.phone,
        color: Colors.black,
      ),
    );
  }


  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }


  
}
