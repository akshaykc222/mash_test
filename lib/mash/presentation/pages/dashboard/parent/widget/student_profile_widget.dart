import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/profile/profile_bloc.dart';
import 'package:mash/mash/presentation/utils/handle_error.dart';

import '../../../../utils/app_colors.dart';

class StudentProfileWidget extends StatelessWidget {
  final bool? isOnList;

  final VoidCallback onTap;

  const StudentProfileWidget({super.key, required this.onTap, this.isOnList});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      buildWhen: (previous, current) {
        if (previous.selectedSibling != current.selectedSibling) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 2,
              surfaceTintColor: AppColors.primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(
                                    'assets/images/student_dummy.png'),
                              ),
                              SizedBox(width: 10),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.selectedSibling?.studentName ?? "",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const Text(
                                      '3B',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (state.getSiblings?.data?.isNotEmpty == true &&
                        state.getSiblings!.data!.length > 1)
                      for (int i = 0;
                          i < (state.getSiblings?.data?.length ?? 0);
                          i++)
                        Positioned(
                          right: 10.0 * i,
                          top: 0,
                          bottom: 0,
                          child: _buildRoundedImage(),
                        ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      listener: (BuildContext context, ProfileState state) {
        if (state.getSiblings?.status == Status.ERROR) {
          handleErrorUi(context: context, error: state.getSiblings?.error);
        }
      },
      listenWhen: (previous, current) =>
          previous.getSiblings?.status != current.getSiblings?.status,
    );
  }

  Widget _buildRoundedImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.white,
                width: 3,
              ),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/student_dummy.png',
                  ))),
        ));
  }
}
