import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mash/mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/non_academic_body.dart';

import '../../../../../di/injector.dart';
import '../../../../../firebase_options.dart';
import '../../../widgets/common_appbar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();

  runApp(MaterialApp(
    home: NonAcademic(),
  ));
}

class NonAcademic extends StatelessWidget {
  const NonAcademic({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DigitalLibraryBloc()
        ..add(const DigitalLibraryEvent.getNonAcademic(typeId: "-1")),
      child: Scaffold(
        appBar: commonAppbar(title: 'NON ACADEMICS', searchFunction: (str) {}),
        body: const NonAcademicBody(),
      ),
    );
  }
}
