import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';

import '../../../../manager/bloc/payment/payment_bloc.dart';
import '../../../../router/app_pages.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../widgets/buttons/animted_button.dart';
import '../../../../widgets/buttons/icon_button.dart';

class PaymentBottomWidget extends StatelessWidget {
  const PaymentBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10)
          .copyWith(top: 5, bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.greyClr200),
      ),
      child: Column(
        children: [
          const TotalAmountRow(),
          spacer10,
          AnimatedSharedButton(
            isLoading: false,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const PaymentDialog(),
              );
            },
            title: Text(
              'Pay Now',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TotalAmountRow extends StatelessWidget {
  const TotalAmountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.greyText,
          ),
        ),
        const Text(':'),
        BlocBuilder<PaymentBloc, PaymentState>(
          builder: (context, state) {
            return Text(
              '₹ ${state.totalAmount}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ],
    );
  }
}

class PaymentDialog extends StatelessWidget {
  const PaymentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -30,
            top: -30,
            child: InkResponse(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: CircleAvatar(
                radius: 15,
                backgroundColor: AppColors.redColor,
                child: Icon(
                  Icons.close,
                  size: 20,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Partial Payment',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              spacer7,
              const Divider(),
              spacer7,
              Text(
                'Enter Amount to Pay (Partial Payment)',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey200,
                ),
              ),
              spacer10,
              const Padding(
                padding: EdgeInsets.all(8),
                child: PartialPaymentTextField(),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: CustomIconButton(
                  color: AppColors.primaryColor.withOpacity(0.2),
                  elevation: 0,
                  icon: '',
                  onTap: () {
                    context.pop();

                    GoRouter.of(context)
                        .pushNamed(AppPages.feesAndPaymentsConfirmation);
                  },
                  name: 'Submit',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PartialPaymentTextField extends StatefulWidget {
  const PartialPaymentTextField({super.key});

  @override
  State<PartialPaymentTextField> createState() =>
      _PartialPaymentTextFieldState();
}

class _PartialPaymentTextFieldState extends State<PartialPaymentTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    _controller.text = context.read<PaymentBloc>().state.totalAmount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        prefixIcon: const Icon(Icons.currency_rupee_sharp),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
