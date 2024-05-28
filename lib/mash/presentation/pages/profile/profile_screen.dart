import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../manager/profile_bloc/profile_bloc.dart';
import '../../utils/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: AppThemes.mainTheme,
    debugShowCheckedModeBanner: false,
    home: const ProfileScreen(),
  ));
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: "Profile"),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            children: [
              const SizedBox(height: 20),
              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1)),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: CachedNetworkImageProvider(
                        state.getUserDetail?.data?.profilePhoto ?? ""),
                    // adjust the size as needed
                    // your image path here
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                state.getUserDetail?.data?.studentName ?? "",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Text(
                'ADM NO : ${state.getUserDetail?.data?.admissionNo ?? ""}',
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              _basicDetails(title: "Basic Details", value: [
                _buildRow(Icons.person, 'User ID',
                    state.getUserDetail?.data?.usrId ?? ""),
                const SizedBox(height: 5),
                _buildRow(Icons.email, 'Email',
                    state.getUserDetail?.data?.email ?? ""),
                const SizedBox(height: 5),
                _buildRow(Icons.phone, 'Phone',
                    state.getUserDetail?.data?.mobile ?? ""),
                const SizedBox(height: 5),
                _buildRow(Icons.date_range, 'Date of Birth',
                    state.getUserDetail?.data?.dob ?? ""),
                const SizedBox(height: 5),
                _buildRow(Icons.bloodtype, 'Blood Group',
                    state.getUserDetail?.data?.dob ?? ""),
                const SizedBox(height: 5),
              ]),
              const SizedBox(
                height: 30,
              ),
              _basicDetails(title: "Personal Information", value: [
                _buildRow(Icons.family_restroom, 'Father Name',
                    state.getUserDetail?.data?.fatherName ?? ""),
                const SizedBox(height: 5),
                _buildRow(Icons.family_restroom, 'Mother Name',
                    state.getUserDetail?.data?.motherName ?? ""),
                const SizedBox(height: 5),
                _buildRow(Icons.phone_android, 'Mother Contact No.',
                    state.getUserDetail?.data?.motherMobile ?? ""),
                const SizedBox(height: 5),
                _buildRow(Icons.phone_android, 'Father Contact',
                    state.getUserDetail?.data?.fatherMobile ?? ""),
                const SizedBox(height: 5),
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        _buildRow(Icons.place, 'Address',
                            state.getUserDetail?.data?.perAddress1 ?? ""),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _basicDetails({required String title, required List<Widget> value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text(
                        "Edit",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(LineIcons.penNib)
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Card(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Column(
                children: value,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRow(IconData iconData1, String leftText, String rightText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              children: [
                Icon(iconData1, color: Colors.black), // Icon
                const SizedBox(width: 10), // Space between icon and text
                Text(
                  leftText,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                rightText,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  letterSpacing: 1,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
