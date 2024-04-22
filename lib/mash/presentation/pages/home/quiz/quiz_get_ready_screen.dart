

import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

class QuizGetReadyScreen extends StatelessWidget {
  const QuizGetReadyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getReadyBody(context),
    );
  }

  getReadyBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomRight,
          colors: [
            Colors.purple,
            Color(0xfffe439e),
          ],
        ),
      ),
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset(AppAssets.quizGetReadyBg),),
        Positioned(
            top: size.height * 0.48,
            child:Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(bottom: 13),
                        child: Image.asset(AppAssets.quizGetReadyCard)),
                    Positioned.fill(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: IconButton(
                            style: IconButton.styleFrom(backgroundColor: Colors.white),
                            onPressed: (){},
                            icon: const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_forward_ios,color: Colors.purple,),
                            ),
                          )),),
                    Positioned.fill(
                      child: SizedBox(
                        height: size.height * 0.15,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Get Ready for\nDaily Quiz',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Comfortaa',color: Colors.white,fontWeight: FontWeight.w600,fontSize: 26),),
                            spacer10,
                            Text('your daily Quiz is ready for\n you, wish you best of luck',style: TextStyle(fontFamily: 'Comfortaa'),)
                          ],
                        ),
                      ),
                    )
                  ],
                ))),
          Positioned(
              top: size.height * 0.2,
              child:Align(
                  alignment: Alignment.center,
                  child: Image.asset(AppAssets.quizGetReadyBoyImage)) )
        ]
      )
    );
  }
}
