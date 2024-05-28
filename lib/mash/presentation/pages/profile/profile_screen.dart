import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              context.pop();
            },
          ),
          centerTitle: true,
          title: const Text(
            "Profile",
            style: TextStyle(
                letterSpacing: 1.5,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'Menu',
              onPressed: () {
                // handle the press
              },
            ),
          ]),
      body: ListView(
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
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/student_dummy.png'),
                // adjust the size as needed
                // your image path here
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Abhishek V',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          const Text(
            'ADM NO : 157/200',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          _basicDetails(title: "Basic Details", value: [
            _buildRow(Icons.person, 'User ID', "MGS1000152"),
            const SizedBox(height: 5),
            _buildRow(Icons.email, 'Email', "abhishekvmenon970@gmail.com"),
            const SizedBox(height: 5),
            _buildRow(Icons.phone, 'Phone', "9353929448"),
            const SizedBox(height: 5),
            _buildRow(Icons.date_range, 'Date of Birth', "10/09/2017"),
            const SizedBox(height: 5),
            _buildRow(Icons.bloodtype, 'Blood Group', "AB+"),
            const SizedBox(height: 5),
          ]),
          const SizedBox(
            height: 30,
          ),
          _basicDetails(title: "Personal Information", value: [
            _buildRow(Icons.family_restroom, 'Father Name', "Haridas C"),
            const SizedBox(height: 5),
            _buildRow(Icons.family_restroom, 'Mother Name', "Ambika V"),
            const SizedBox(height: 5),
            _buildRow(Icons.phone_android, 'Mother Contact No.', "9995553571"),
            const SizedBox(height: 5),
            _buildRow(Icons.phone_android, 'Father Contact', "9892929301"),
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
                        "Sree rama nivas, P.O Urakam,Cherpu ,Thrissur 680562."),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          )
        ],
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
