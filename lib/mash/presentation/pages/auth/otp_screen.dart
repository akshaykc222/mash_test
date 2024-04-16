import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  Timer? _timer;

  int _countDown = 30;

  bool _showResendButton = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

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
          sizedBox(100.0),
          _otpField(),
          sizedBox(60.0),
          _submitOtpButton(context),
          sizedBox(10.0),
          _resendButtonAndTimer(),
          sizedBox(20.0),
          _backToLoginText(context),
          sizedBox(40.0),
          _footer(context)
        ],
      ),
    );
  }

  sizedBox(height){
    return SizedBox(
      height: SizeConfig.height(height),
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
        'Enter 4 Digit OTP',
        style: TextStyle(
            letterSpacing: 2, fontSize: 30, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _submitOtpButton(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(double.infinity, 50)),
        onPressed: () => dialogBox(),
        child: const Text(
          'SUBMIT OTP',
        ));
  }

  _otpField() {
    return OTPTextField(
      length: 4,
      otpFieldStyle: OtpFieldStyle(
        focusBorderColor: Colors.purple
      ),
      width: 150,
      fieldWidth: 60,
      style: const TextStyle(fontSize: 14),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.underline,
      onCompleted: (pin) {},
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  dialogBox() {
    setState(() {});
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Enter OTP'),
          content: StatefulBuilder(builder: (context, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: OTPTextField(
                    length: 4,
                    width: 150,
                    fieldWidth: 30,
                    style: const TextStyle(fontSize: 14),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,
                    onCompleted: (pin) {},
                  ),
                ),
                spacer20,
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
              ],
            );
          }),
        );
      },
    );
  }

  _resendButtonAndTimer() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: !_showResendButton,
            child: Text(
              'Resend OTP in $_countDown seconds',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          spacerWidth20,
          Visibility(
            visible: _showResendButton,
            child: TextButton(
              onPressed: () {
                setState(() {
                  _countDown = 30;
                  _showResendButton = false;
                  startTimer();
                });
              },
              child: const Text(
                'Resend',
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
