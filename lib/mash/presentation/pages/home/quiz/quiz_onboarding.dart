import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: AppThemes.mainTheme,
    debugShowCheckedModeBanner: false,
    home: const QuizOnBoarding(),
  ));
}

class QuizOnBoarding extends StatefulWidget {
  const QuizOnBoarding({super.key});

  @override
  State<QuizOnBoarding> createState() => _QuizOnBoardingState();
}

class _QuizOnBoardingState extends State<QuizOnBoarding> {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.purple,
          ),
        ),
        style: IconButton.styleFrom(backgroundColor: Colors.white),
      ),
      body: onBoardingBody(),
    );
  }

  onBoardingBody() {
    var size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
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
        children: [
          PageView(
            onPageChanged: (value) {},
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children: [
              onBoardingPages(AppAssets.onBoard1, "Let’s Start the Game",
                  'You earn points as you play and can watch the scores of other Consentence real time'),
              onBoardingPages(AppAssets.onBoard2, "Learn more in\ngame mode",
                  'You earn points as you play and can watch the scores of other Consentence real time'),
              onBoardingPages(
                  AppAssets.onBoard3,
                  "Get interesting facts\nabout Quiz",
                  'You earn points as you play and can watch the scores of other Consentence real time')
            ],
          ),
        ],
      ),
    );
  }

  Widget onBoardingPages(String img, title, descText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          img,
          height: MediaQuery.of(context).size.height / 3.5,
        ),
        spacer20,
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        spacer30,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            descText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        spacer40
      ],
    );
  }
}
