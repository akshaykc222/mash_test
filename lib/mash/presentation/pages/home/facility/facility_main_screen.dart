import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mash/mash/presentation/pages/home/facility/widgets/subscribe_dialog_box.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_small_button.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class FacilityMainScreen extends StatelessWidget {
  const FacilityMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppStrings.facility),
          bottom: const TabBar(
            tabs: [
              Tab(text: AppStrings.explore),
              Tab(text: AppStrings.active),
            ],
          ),
        ),
        endDrawer: DrawerWidget(),
        body: const FacilityTabs(),
      ),
    );
  }
}

class FacilityTabs extends StatelessWidget {
  const FacilityTabs({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCount = 5;
    return TabBarView(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              itemCount == 0
                  ? Center(
                      child: SizedBox(
                      height: 300,
                      width: 300,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppAssets.noData,
                            height: 200,
                            width: 200,
                          ),
                          const Text('NO DATA FOUND!'),
                        ],
                      ),
                    ))
                  : Expanded(
                      child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return spacer7;
                          },
                          itemCount: itemCount,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
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
                              child: Theme(
                                data: Theme.of(context)
                                    .copyWith(dividerColor: Colors.transparent),
                                child: ExpansionTile(
                                  expandedCrossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  title: const Text(
                                    'Transportation',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  children: <Widget>[
                                    const Text(
                                      "${AppStrings.description} :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                    spacer7,
                                    Text(
                                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the is available.',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: AppColors.greyText),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: CommonSmallButton(
                                        onPress: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return const SubscribeDialogWidget();
                                            },
                                          );
                                        },
                                        // onPress: ()=> GoRouter.of(context).pushNamed(AppPages.paymentHistoryScreen),
                                        title: AppStrings.subscribe,
                                        color: AppColors.primaryColor,
                                        prefixIcon: Icons.app_registration,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Term |',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            const Text(
                              'ACADEMIC FEE',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Paid On - ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                Text(
                                  '11/05/2024 9:45:21 AM',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '${AppStrings.paidAmount} - ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                Text(
                                  '\u20B9' '16500',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: AppColors.green2),
                                ),
                              ],
                            ),
                          ],
                        ),
                        children: <Widget>[
                          CommonSmallButton(
                              onPress: () {},
                              // onPress: ()=> GoRouter.of(context).pushNamed(AppPages.paymentHistoryScreen),
                              title: 'Transaction History',
                              prefixIcon: Icons.remove_red_eye_rounded,
                              color: AppColors.primaryColor),
                        ],
                      ),
                    ),
                  );
                })),
      ],
    );
  }
}
