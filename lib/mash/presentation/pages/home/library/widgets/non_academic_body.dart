// import 'package:flutter/material.dart';
//
// class NonAcademicBody extends StatelessWidget {
//   const NonAcademicBody({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.only(
//             left: 15.0,
//             bottom: 5,
//           ),
//           child: Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 'Select Class',
//                 style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//               )),
//         ),
//       ],
//     );
//   }
// }
//
// class FilterTitleChip extends StatelessWidget {
//   final List<T>
//   const FilterTitleChip({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.only(
//             left: 15.0,
//             bottom: 5,
//           ),
//           child: Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 'Select Class',
//                 style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//               )),
//         ),
//         SizedBox(
//           height: 60,
//           child: Padding(
//             padding: const EdgeInsets.only(left: 10, bottom: 8.0, top: 8),
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: classes.length,
//                 itemBuilder: (context, index) {
//                   return buttons(index, classes[index], classes);
//                 }),
//           ),
//         )
//       ],
//     );
//   }
// }
