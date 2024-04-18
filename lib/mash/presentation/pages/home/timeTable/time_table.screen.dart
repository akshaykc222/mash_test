import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: DrawerWidget(),
      appBar: commonAppbar(title: 'TIMETABLES'),
      body: timeTableBody(),
    );
  }

  timeTableBody() {
    List titleList = ['DAILY\n TIMETABLE', 'WEEKLY\n TIMETABLE', 'EXAM\n TIMETABLE'];
    List assetList = [AppAssets.dailyTimeTable,AppAssets.weekyTimeTable,AppAssets.examTimeTable];
    return Padding(
      padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context,index){
        return timeTableCard((){},assetList[index],titleList[index]);
      }) ,
    );
  }

  timeTableCard(onPress,assetName,title) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
          onTap: onPress,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              ),],
            ),
            child:  Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(assetName),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(title)),
                )
              ],
            ),
          )),
    );
  }
}
