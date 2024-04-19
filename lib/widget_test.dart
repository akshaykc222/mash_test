import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mash/mash/presentation/pages/dashboard/teacher_screen.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

void main() {
  runApp(const MaterialApp(
    home: TestScreen(),
  ));
}

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        GestureDetector(
          child: Container(
            // height: 260,
            height: MediaQuery.of(context).size.height / 3,
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  "https://arzenafees.com/wp-content/uploads/2021/06/Invest_Rudn_Enclave.jpg",
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Positioned.fill(
          // top: 255,
          top: MediaQuery.of(context).size.width * 0.5,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: Text(
                  'Rudn Enclave',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto'),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.amber,
                    ),
                    Expanded(
                      child: Text(
                        'Adiala Road, Rawalpindi, Rawalpindi Cantonment, Rawalpindi District, Punjab, 46600, Pakistan',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 45,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ]),
    );
  }
}
