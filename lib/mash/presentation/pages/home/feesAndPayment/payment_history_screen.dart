import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_icon_button.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_small_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      endDrawer: DrawerWidget(),
      appBar: commonAppbar(title: AppStrings.transactionHistory),
      body: const TransactHistoryScreen(),
    );
  }
}


class TransactHistoryScreen extends StatelessWidget {
  const TransactHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return spacer7;
          },
          itemCount: 15,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child:  Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  expandedAlignment: Alignment.centerLeft,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Term |',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                      const Text('ACADEMIC FEE',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                      const Row(
                        children: [
                          Text('Paid On - ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                          Text('11/05/2024 9:45:21 AM',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('${AppStrings.paidAmount} - ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                          Text('\u20B9''16500',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: AppColors.green2),),
                        ],
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                          CommonSmallButton(onPress: (){}, title: AppStrings.viewReceipt, prefixIcon: Icons.remove_red_eye_rounded, color: AppColors.primaryColor),
                          Row(
                            children: [
                              CommonIconButton(onTap: (){},icon: Icons.file_download_outlined,),
                              CommonIconButton(onTap: (){},icon: Icons.share,)
                            ],
                          )
                        ],
                      ),
                    ),
                    spacer10,
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(AppStrings.paidBy+'\nDr.Renjith PR\n8756664733\nranjith@gmail.com',style: TextStyle(fontSize: 16),)) ,
                    ),
                    spacer10
                  ],
                ),
              ),
            );
          }),
    );
  }
}

