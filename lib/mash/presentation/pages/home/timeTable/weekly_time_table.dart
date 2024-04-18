import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_theme.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: AppThemes.mainTheme,
    debugShowCheckedModeBanner: false,
    home: const WeeklyTimeTable(),
  ));
}

class WeeklyTimeTable extends StatelessWidget {
  const WeeklyTimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    return Scaffold(
      appBar: commonAppbar(title: 'Weekly TimeTable'),
      // body: timeTableBody(days,context),
      body: CalendarUI(),
      drawer: DrawerWidget(),
    );
  }

  Widget dateCard(days, onPress) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.purple.shade300),
        child: Center(
          child: Text(
            days,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  timeTableBody(List<String> days, BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: size.width ,
        padding: const EdgeInsets.only( top: 10, bottom: 10),
        /* child: Row(
          children: [
            Expanded(
              flex: 1,
              child: ListView.separated(
                separatorBuilder: (context,index){
                  return spacer10;
                },
                itemCount: days.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index){
                    return dateCard(days[index],(){});
                  }),
            ),
            const Expanded(
              flex: 6,
              child: Padding(padding:  EdgeInsets.only(right: 10),
               */ /* child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    itemBuilder: (context,index){
                      return const PeriodCard(periodNumber: '1', time: '10 AM - 11 AM', subjectName: 'EVS',);
                    }, itemCount: 3,)*/ /*
              ),
            ),

          ],
        ),*/
        child: Table(
          children: [
            buildRow(['Days/Periods','Period 1','Period 2','Period 3','Period 4','Period 5','Period 6','Period 7','Period 8',]),
            buildRow(['Monday','Period 1','Period 2','Period 3','Period 4','Period 5','Period 6','Period 7','Period 8',]),
            buildRow(['Tuesday','Period 1','Period 2','Period 3','Period 4','Period 5','Period 6','Period 7','Period 8',]),
            buildRow(['Wednesday','Period 1','Period 2','Period 3','Period 4','Period 5','Period 6','Period 7','Period 8',]),
            buildRow(['Thursday','Period 1','Period 2','Period 3','Period 4','Period 5','Period 6','Period 7','Period 8',]),
            buildRow(['Friday','Period 1','Period 2','Period 3','Period 4','Period 5','Period 6','Period 7','Period 8',]),
            buildRow(['Saturday','Period 1','Period 2','Period 3','Period 4','Period 5','Period 6','Period 7','Period 8',]),
          ],
    border:  TableBorder.symmetric(
      outside:  BorderSide(width: 5, color: Colors.purple,style: BorderStyle.solid),
        inside: BorderSide(width: 2, color: Colors.purple)),
        ),
      ),
    );
  }

  TableRow buildRow(List<String> cells) => TableRow(
    decoration: BoxDecoration(
      border: Border.all(width: 1,color: Colors.purple),
      borderRadius: BorderRadius.circular(10),
      color: Colors.purple.shade200
    ),
          children: cells.map((cell) {
        return Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Text(cell,style: const TextStyle(color: Colors.white),),
          ),
        );
      }).toList());


}

class CalendarUI extends StatelessWidget {
  const CalendarUI({super.key});

  @override
  Widget build(BuildContext context) {
var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height*0.6,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              constraints: const BoxConstraints(
                minHeight: 200,
                minWidth: 60
              ),
              child: const Column(
                // crossAxisAlignment: ,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(flex: 1),
                  Text('Mon'),
                  Spacer(flex: 2),
                  Text('Tue'),
                  Spacer(flex: 2),
                  Text('Wed'),
                  Spacer(flex: 2),
                  Text('Thu'),
                  Spacer(flex: 2),
                  Text('Fri'),
                  Spacer(flex: 2),
                  Text('Sat'),
                  Spacer(flex: 1),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                    ),
                    itemCount: 48,
                    itemBuilder: (BuildContext context, int key) {
                        return Card(
                            color: Colors.purple.shade300,
                            child: Center(
                              child: Text('periods'),
                            ));
                      }
                    ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
