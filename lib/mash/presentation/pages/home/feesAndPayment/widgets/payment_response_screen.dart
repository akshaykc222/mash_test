import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';
import 'package:rive/rive.dart';

class PaymentResponseScreen extends StatelessWidget {
  final OrderStatus orderStatus;

  const PaymentResponseScreen({super.key, required this.orderStatus});

  @override
  Widget build(BuildContext context) {
    final asset = _getLottieAsset(orderStatus);
    final message = _getMessage(orderStatus);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: RiveAnimation.asset(
              asset,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 20,
          ), // Add some spacing between Lottie and Text
          Text(
            message,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: SizeUtility(context).height / 10),
          orderStatus == OrderStatus.PAID
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomIconButton(
                        width: SizeUtility(context).width / 2,
                        elevation: 3,
                        icon: AppAssets.transactionHistory,
                        name: 'View Reciept',
                        onTap: () {},
                      ),
                      _iconContainerWidget(
                        assetFromSvg(AppAssets.downloadIcon),
                      ),
                      _iconContainerWidget(assetFromSvg(AppAssets.share))
                    ],
                  ),
                )
              : spacer10,
          SizedBox(height: SizeUtility(context).height / 10),
          Flexible(
            child: CustomIconButton(
              color: AppColors.primaryColor.withOpacity(0.3),
              elevation: 0,
              name: orderStatus == OrderStatus.FAILED
                  ? 'Back to Payment'
                  : "Back to Home",
              onTap: () {
                context.pop();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _iconContainerWidget(Widget child) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: child,
    );
  }

  String _getLottieAsset(OrderStatus status) {
    switch (status) {
      case OrderStatus.ACTIVE:
        return AppAssets.processing;
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
        return "Payment successful";
      default:
        return ""; // Return a default value or handle this case appropriately
    }
  }
}
