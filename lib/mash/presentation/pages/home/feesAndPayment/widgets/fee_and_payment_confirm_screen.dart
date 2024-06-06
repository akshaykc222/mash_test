import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/widgets/payment_bottom_pay_widget.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

import '../../../../manager/bloc/profile_bloc/profile_bloc.dart';

class PaymentConfirmationScreen extends StatefulWidget {
  const PaymentConfirmationScreen({super.key});

  @override
  State<PaymentConfirmationScreen> createState() =>
      _PaymentConfirmationScreenState();
}

class _PaymentConfirmationScreenState extends State<PaymentConfirmationScreen> {
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Fees & Payments'),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: SizeUtility(context).height / 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment For',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.greyText),
                  ),
                  spacer10,
                  Divider(color: AppColors.primaryColor),
                  spacer10,
                  BlocBuilder<ProfileBloc, ProfileState>(
                    builder: (context, state) {
                      final data = state.getUserDetail?.data;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data?.studentName ?? "",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          spacer20,
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Admission no - ',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(color: AppColors.greyText),
                              ),
                              TextSpan(
                                text: '${data?.admissionNo}',
                                style: Theme.of(context).textTheme.titleMedium,
                              )
                            ]),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(height: SizeUtility(context).height / 10),
                  CommonTextField(
                      title: 'Enter Your Name',
                      controller: _nameController,
                      prefix: const Icon(Icons.person)),
                  spacer20,
                  CommonTextField(
                      title: 'Mobile Number',
                      prefix: const Icon(Icons.call),
                      controller: _mobileController),
                  spacer20,
                  CommonTextField(
                    title: 'Email',
                    controller: _emailController,
                    prefix: const Icon(Icons.email),
                  ),
                  spacer30,
                  Text(
                    'Payment Remarks',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.greyText),
                  ),
                  spacer10,
                  CommonTextField(
                    isOutlined: true,
                    title: '',
                    lines: 5,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: PaymentBottomWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
