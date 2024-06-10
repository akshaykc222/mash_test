import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:rive/rive.dart';

class PaymentResponseScreen extends StatelessWidget {
  final OrderStatus orderStatus;

  const PaymentResponseScreen({super.key, required this.orderStatus});

  @override
  Widget build(BuildContext context) {
    final asset = _getLottieAsset(orderStatus);
    final message = _getMessage(orderStatus);
    print(asset);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: RiveAnimation.asset(
                "assets/lottie/payment_sucess.riv",
              ),
            ),
            SizedBox(height: 20), // Add some spacing between Lottie and Text
            Text(
              message,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  String _getLottieAsset(OrderStatus status) {
    switch (status) {
      case OrderStatus.ACTIVE:
        return 'assets/lottie/success.json';
      case OrderStatus.FAILED:
        return AppAssets.paymentFailed;
      case OrderStatus.PAID:
        return AppAssets.paymentSuccess;
      default:
        return ""; // Return a default value or handle this case appropriately
    }
  }

  String _getMessage(OrderStatus status) {
    switch (status) {
      case OrderStatus.ACTIVE:
        return "Payment is processing...";
      case OrderStatus.FAILED:
        return "Payment failed. Please try again.";
      case OrderStatus.PAID:
        return "Payment successful. Thank you!";
      default:
        return ""; // Return a default value or handle this case appropriately
    }
  }
}
