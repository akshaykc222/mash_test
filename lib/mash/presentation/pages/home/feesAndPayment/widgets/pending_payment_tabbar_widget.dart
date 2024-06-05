import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/widgets/fees_and_payments_tabs.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';

import '../../../../../../core/response_classify.dart';
import '../../../../manager/bloc/bloc/payment_bloc.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/loader.dart';
import '../../../../widgets/buttons/animted_button.dart';

class PendingPaymentTabbarWidget extends StatefulWidget {
  const PendingPaymentTabbarWidget({super.key});

  @override
  State<PendingPaymentTabbarWidget> createState() =>
      _PendingPaymentTabbarWidgetState();
}

class _PendingPaymentTabbarWidgetState
    extends State<PendingPaymentTabbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<PaymentBloc, PaymentState>(
            builder: (context, state) {
              if (state.paymentDashboardResponse.status == Status.LOADING) {
                return const Loader();
              } else if (state.paymentDashboardResponse.data?.isEmpty ?? true) {
                return HelperClasses.emptyDataWidget();
              } else {
                return ListView.separated(
                  padding: EdgeInsets.zero,
                  separatorBuilder: (context, index) {
                    return spacer7;
                  },
                  itemCount: state.paymentDashboardResponse.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    final data = state.paymentDashboardResponse.data![index];
                    return PaidWidget(
                        onTap: () {
                          BlocProvider.of<PaymentBloc>(context).add(
                              PaymentEvent.selectedItemIndex(
                                  index: state.selectedItemIndex == index
                                      ? null
                                      : index));
                        },
                        onChanged: (_) {
                          BlocProvider.of<PaymentBloc>(context).add(
                              PaymentEvent.selectPaymentsCheckboxEvent(
                                  data.feeTrackId!));
                        },
                        isChecked: state.selectedCheckboxItems!
                                .contains(data.feeTrackId) ||
                            data.isDue == '1',
                        isSelected: state.selectedItemIndex == index,
                        isPending: true,
                        entity: data,
                        date: 'Due date',
                        amount: 'Due amount');
                  },
                );
              }
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10)
              .copyWith(top: 5, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.greyClr200),
          ),
          child: Column(
            children: [
              Row(
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
                  const Text(
                    '₹ 28950',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              spacer10,
              AnimatedSharedButton(
                isLoading: false,
                onTap: () {},
                title: Text(
                  'Pay Now',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
