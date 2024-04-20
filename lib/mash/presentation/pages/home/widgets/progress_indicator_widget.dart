import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/enums.dart';

class ProgressIndicatorWidget extends StatefulWidget {
  final double initialValue;
  final ProgressIndicatorType progressIndicatorType;

  const ProgressIndicatorWidget(
      {super.key,
      required this.initialValue,
      required this.progressIndicatorType});

  @override
  State<ProgressIndicatorWidget> createState() =>
      _ProgressIndicatorWidgetState();
}

class _ProgressIndicatorWidgetState extends State<ProgressIndicatorWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation initialAnimation;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    initialAnimation = Tween<double>(begin: 0, end: widget.initialValue)
        .chain(CurveTween(curve: Curves.easeIn))
        .animate(controller);
    controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return widget.progressIndicatorType == ProgressIndicatorType.circular
              ? CircularProgressIndicator(
                  value: initialAnimation.value,
                  color: AppColors.primaryColor,
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  strokeWidth: 8,
                  // strokeAlign: BorderSide.strokeAlignInside,
                  strokeCap: StrokeCap.round,
                )
              : LinearProgressIndicator(
                  value: initialAnimation.value,
                  semanticsLabel: 'Linear progress indicator',
                  color: AppColors.gradient,
                  backgroundColor: Colors.grey,
                );
        });
  }
}
