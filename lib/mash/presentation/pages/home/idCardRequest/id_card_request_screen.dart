import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/domain/entities/id_module/id_request_entity.dart';
import 'package:mash/mash/presentation/manager/bloc/id_request/id_request_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_gesture_detector.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

import '../../../../../core/response_classify.dart';
import '../../../utils/handle_error.dart';

class IdCardRequestScreen extends StatefulWidget {
  const IdCardRequestScreen({super.key});

  @override
  State<IdCardRequestScreen> createState() => _IdCardRequestScreenState();
}

class _IdCardRequestScreenState extends State<IdCardRequestScreen> {
  final TextEditingController _requestController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.idCardRequest),
      endDrawer: const DrawerWidget(),
      body: idRequestBody(context),
    );
  }

  idRequestBody(BuildContext context) {
    IdRequestBloc.get(context).add(
        const IdRequestEvent.getTransferRequestEvent());
    List<String> options = [
      'option 1',
      'option 2',
      'option 2',
      'option 2',
      'option 2',
      'option 3',
      'option 3',
      'option 3',
      'option 3',
      'option 3'
    ];
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(AppStrings.studentName),
          HelperClasses.getSelectedStudent(context),
          titleText(AppStrings.request),
          BlocConsumer<IdRequestBloc, IdRequestState>(
            listener: (context, state) {
              if(state.getIdRequestType?.status == Status.ERROR ){
                handleErrorUi(context: context, error: state.getIdRequestType?.error);
              }
            },
            builder: (context, state) {
              return CommonGestureDetector(
                  onTap: () =>
                      _openOptionsBottomSheet(context, _requestController,
                          AppStrings.selectModule,state.getIdRequestType!.data!),
                  icon: Icons.arrow_drop_down_circle,
                  textController: _requestController,
                  hintText: AppStrings.requestType);
            },
          ),
          titleText(AppStrings.remarks),
          CommonTextField(lines: 4, title: AppStrings.enterRemarks),
          spacer30,
          AnimatedSharedButton(
              onTap: () {},
              title: Text(
                AppStrings.submitCapital,
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: AppColors.white),
              ),
              isLoading: false)
        ],
      ),
    );
  }

  titleText(title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }

  void _openOptionsBottomSheet(BuildContext context,
      TextEditingController controller, String sheetTitle,List<IdRequestEntity> requestTypes) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          decoration: BoxDecoration(
              border: Border.all(width: 10, color: Colors.grey),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16), topLeft: Radius.circular(16))),
          height: SizeConfig.height(requestTypes.length * 90).toDouble(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  sheetTitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: requestTypes.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(requestTypes[index].request),
                          onTap: () {
                            controller.text = requestTypes[index].request;
                            Navigator.of(context).pop();
                          },
                        );
                      }))
            ],
          ),
        );
      },
    );
  }
}
