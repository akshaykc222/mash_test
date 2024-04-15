
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/widgets/schedule_item.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';


void main(){
  runApp(const MaterialApp(home: TeacherDashboard(),));
}
class TeacherDashboard extends StatefulWidget {
  const TeacherDashboard({super.key});

  @override
  State<TeacherDashboard> createState() => _TeacherDashboardState();
}

class _TeacherDashboardState extends State<TeacherDashboard>{


 late MediaQueryData mediaQuery;


  @override
  void didChangeDependencies() {
    mediaQuery =MediaQuery.of(context);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
            _header(),
         _body()
        ],
      ),
    );
  }
 Widget _header()=>SliverAppBar(
   expandedHeight: 200.0,
   flexibleSpace: FlexibleSpaceBar(

     background: Image.network(
       'https://th.bing.com/th/id/OIP.HgH-NjiOdFOrkmwjsZCCfAAAAA?rs=1&pid=ImgDetMain',
       fit: BoxFit.cover,
     ),
   ),
 );

  Widget _body()=>SliverFillViewport(delegate: SliverChildListDelegate(
    [
      _basicDetails(),


    ]
  ));
  Widget _basicDetails(){//to build
    return  Column(
      children: [
        spacer20,
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("AKSHAY K.C",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: AppColors.headText),),

          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal:50.0),
          child: Divider(),
        ),

         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Employee Id  - ",style: TextStyle(fontSize: 12,color: AppColors.textColorNew),),
             Text("00045",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:AppColors.textColorNew ))
          ],
        ),
        SizedBox(height: mediaQuery.size.height * 0.06,),
        _buildSchedules()
      ],
    );
  }
 Widget _buildSchedules(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStrings.schedulesForClass,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.textColorNew),),
            Text(AppStrings.viewAll,style:TextStyle(fontSize: 10,color: AppColors.headText) ,)
          ],
        ),
        // spacer10,
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (c,index)=>const ScheduleItem())
      ],),
    );
  }
}
