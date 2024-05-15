import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_small_button.dart';

class FeesAndPaymentsTabs extends StatelessWidget {
  const FeesAndPaymentsTabs({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCount = 0;
    return TabBarView(
      children: [
        Center(
          child: Column(
            children: [
              Expanded(
                  flex: 5,
                  child:itemCount == 0 ? Center(child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Column(
                      children: [
                         SvgPicture.asset(AppAssets.noData,height: 200,width: 200,),
                        const Text('NO DATA FOUND!'),
                      ],
                    ),
                  )) : ListView.separated(
                      separatorBuilder: (context, index) {
                        return spacer7;
                      },
                      itemCount: itemCount,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 20,
                          color: Colors.red,
                        );
                      })),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        blurRadius: 5.0,
                      ),],
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Text('Total - ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                          Text('  \u20B912000',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700)),
                        ],
                      ),
                      CommonSmallButton(onPress: (){}, title: AppStrings.payNow, prefixIcon: Icons.currency_rupee, color: AppColors.primaryColor)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Center(
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
                          CommonSmallButton(onPress: ()=> GoRouter.of(context).pushNamed(AppPages.paymentHistoryScreen), title: 'Transaction History', prefixIcon: Icons.remove_red_eye_rounded, color: AppColors.primaryColor),
                        ],
                      ),
                    ),
                  );
                })),
      ],
    );
  }
}
