import 'package:flutter/material.dart';


class AnimatedWidget extends StatefulWidget {
  final AnimationTypes type;
  final Widget child;

  const AnimatedWidget({super.key, required this.type, required this.child});

  @override
  State<AnimatedWidget> createState() => _AnimatedWidgetState();
}

class _AnimatedWidgetState extends State<AnimatedWidget>  with TickerProviderStateMixin{



  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _offsetAnimation;



  @override
  void initState() {
    _controller =AnimationController(vsync: this,duration:const Duration(seconds: 1) );
    _fadeAnimation =Tween<double>(
        begin: 0,
        end: 1
    ).chain(CurveTween(curve: Curves.easeIn)).animate(_controller);
    _scaleAnimation =Tween<double>(
        begin: 0.5,
        end: 1
    ).chain(CurveTween(curve: Curves.easeIn)).animate( _controller);

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0), // Start from left side
      end: const Offset(0.0, 0.0),
    ).chain(CurveTween(curve: Curves.easeInOut)).animate(_controller);
    _controller.forward();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context,child){
          return Opacity(opacity: _fadeAnimation.value,
            child: widget.type==AnimationTypes.rightToLeft?SlideTransition(
              position: _offsetAnimation,
              child: widget.child,
            ): Transform.scale(
              scale: _scaleAnimation.value,
              child: widget.child,
            ),);
        });
  }
}

enum AnimationTypes{
  scaleAndFade,
  rightToLeft
}