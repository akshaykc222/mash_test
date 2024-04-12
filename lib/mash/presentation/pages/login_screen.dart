import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner:false,
    home: LoginScreen(),));
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
    return ListView(
      children: [
         _mashIcon(),
      ],
    );
  }

  Widget _mashIcon() {
    return SvgPicture.network(
        AppAssets.mashLoginLogo
    );
  }


}
