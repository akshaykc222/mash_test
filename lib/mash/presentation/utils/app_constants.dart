import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/app.dart';

import '../router/app_pages.dart';
import 'app_colors.dart';

class AppConstants {
  static const appName = "MASH";
}

//height
const spacer4 = SizedBox(
  height: 4,
);
const spacer10 = SizedBox(
  height: 10,
);
const spacer7 = SizedBox(
  height: 7,
);
const spacer20 = SizedBox(
  height: 20,
);
const spacer26 = SizedBox(
  height: 26,
);

const spacer30 = SizedBox(
  height: 30,
);
const spacer40 = SizedBox(
  height: 40,
);
const spacer50 = SizedBox(
  height: 50,
);
const spacer60 = SizedBox(
  height: 60,
);
const spacer70 = SizedBox(
  height: 70,
);
const spacer80 = SizedBox(
  height: 80,
);
const spacer90 = SizedBox(
  height: 90,
);
const spacer100 = SizedBox(
  height: 100,
);
const spacer110 = SizedBox(
  height: 110,
);
const spacer120 = SizedBox(
  height: 120,
);

//width
const spacerWidth10 = SizedBox(
  width: 10,
);
const spacerWidth20 = SizedBox(
  width: 20,
);
const spacerWidth30 = SizedBox(
  width: 30,
);
const spacerWidth40 = SizedBox(
  width: 40,
);
const spacerWidth50 = SizedBox(
  width: 50,
);
const spacerWidth60 = SizedBox(
  width: 60,
);
const spacerWidth70 = SizedBox(
  width: 70,
);

handleUnAuthorizedError() {
  showModalBottomSheet(
      isDismissible: false,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      context: navigatorKey.currentState!.context,
      builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    "Session Expired!",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
                  child: Text(
                    "Your Session has expired. Please login again.",
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      GoRouter.of(context).goNamed(AppPages.login);
                    },
                    child: const Text("Login"),
                  ),
                )
              ],
            ),
          ));
}
