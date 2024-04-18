
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';

void main(){
  ValueNotifier<bool> _isLoading = ValueNotifier(false);



  runApp(MaterialApp(
    home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder
            (
            valueListenable: _isLoading,
            builder: (context,data,child) {
              return AnimatedSharedButton(
                onTap: (){
                  _isLoading.value = ! _isLoading.value ;
                  Future.delayed(const Duration(seconds: 2),(){
                    _isLoading.value = ! _isLoading.value ;
                    _isLoading.notifyListeners();
                  });
                },
                title: const Text("Login"), isLoading: data,


              );
            }
          ),
        ],
      ),
    ),
  ));
}
typedef BoolCallback = void Function(bool value);

class AnimatedSharedButton extends StatefulWidget {
  final Function onTap;
  final Widget title;
  final bool isLoading;


  const AnimatedSharedButton({super.key, required this.onTap, required this.title, required this.isLoading,});

  @override
  State<AnimatedSharedButton> createState() => _AnimatedSharedButtonState();
}

class _AnimatedSharedButtonState extends State<AnimatedSharedButton> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation<double> _borderAnimation;

  late Animation<double> _colorSizeAnimation;


  double minSize=0.15;
  @override
  void initState() {
    _animationController =AnimationController(vsync: this,duration: const Duration(milliseconds: 600));
    _borderAnimation =Tween<double>(begin: 0,end: 80).animate(_animationController);
    _colorSizeAnimation = Tween<double>(begin: 1,end:minSize).animate(_animationController);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant AnimatedSharedButton oldWidget) {
    if (widget.isLoading != oldWidget.isLoading) {
      if (widget.isLoading) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

   @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: _animationController, builder: (context,child){

      return GestureDetector(
        onTap: ()=>widget.onTap(),
        child: Container(
            width:  MediaQuery.sizeOf(context).width,
            height: 60,
            decoration: const BoxDecoration(

            ),
            child: Stack(
              children: [

                Align(
                  alignment: Alignment.center,
                  child: FractionallySizedBox(
                    widthFactor:_colorSizeAnimation.value,
                    child: Container(
                      height: 60,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(80)
                      ),
                      child:_colorSizeAnimation.value == minSize? const Center(child: CircularProgressIndicator(color: Colors.white,),):SizedBox(),
                    ),
                  ),
                ),
                if(_colorSizeAnimation.value>minSize)
                  Positioned.fill(child: Align(
                    alignment: Alignment.center,
                    child: widget.title,
                  ))
              ],
            )
        ),
      );
    });
  }
}
