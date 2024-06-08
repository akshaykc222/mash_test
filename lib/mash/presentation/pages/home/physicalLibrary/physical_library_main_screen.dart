import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/library_bloc/library_bloc.dart';
import 'package:mash/mash/presentation/pages/home/physicalLibrary/widgets/books_detail_card.dart';
import 'package:mash/mash/presentation/pages/home/physicalLibrary/widgets/filter_widget.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

import '../../../widgets/drawer_widget.dart';

class PhysicalLibraryMainScreen extends StatefulWidget {
  const PhysicalLibraryMainScreen({super.key});

  @override
  State<PhysicalLibraryMainScreen> createState() =>
      _PhysicalLibraryMainScreenState();
}

class _PhysicalLibraryMainScreenState extends State<PhysicalLibraryMainScreen> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LibraryBloc.get(context).add(const LibraryEvent.getPhysicalLibrary(
        prmLangId: '-1', prmAuthId: '-1', prmSearch: "-1"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.physicalLibrary),
      endDrawer: const DrawerWidget(),
      body:  PhysicalLibraryBody(),
    );
  }
}

class PhysicalLibraryBody extends StatelessWidget {
  const PhysicalLibraryBody( {super.key});



  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Container(
            height: SizeConfig.height(100),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.purpleLight,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  blurRadius: 5.0,
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CommonTextField(
                      controller:  _searchController,
                      suffix: const Icon(Icons.search),
                      title: 'Search Book',
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => GoRouter.of(context)
                              .pushNamed(AppPages.physicalLibraryFilter),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15)),
                                color: AppColors.primaryColor),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.filter_alt_sharp,
                                    size: 15,
                                    color: AppColors.white,
                                  ),
                                  spacerWidth4,
                                  Text(
                                    AppStrings.filterSmall,
                                    style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        color: AppColors.grey700,
                        width: 2,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            LibraryBloc.get(context).add( LibraryEvent.getPhysicalLibrary(
                                prmLangId: '-1', prmAuthId: '-1', prmSearch: _searchController.text ?? '-1'));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(15)),
                                color: AppColors.primaryColor),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.search,
                                    size: 15,
                                    color: AppColors.white,
                                  ),
                                  spacerWidth4,
                                  Text(
                                    AppStrings.searchSmall,
                                    style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: BlocBuilder<LibraryBloc, LibraryState>(
              builder: (context, state) {
                return  state.getPhysicalLibrary?.status == Status.LOADING ||state.getPhysicalLibrary?.data == null
                    ?  const Loader()
                    : GridView.builder(
                    itemCount: state.getPhysicalLibrary?.data?.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      return state.getPhysicalLibrary!.data!.isEmpty? HelperClasses.emptyDataWidget(): BookDetailCard(entity: state.getPhysicalLibrary!.data![index],);
                    });
              },
            ),
          )
        ],
      ),
    );
  }

}
