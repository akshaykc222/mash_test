import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: LoginScreen(),));
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
    return SingleChildScrollView(
      child: ListView(
        children: [

        ],
      ),
    );
  }
}
