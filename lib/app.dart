import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/di/injector.dart';
<<<<<<< HEAD
import 'package:mash/mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart';
import 'package:mash/mash/presentation/manager/cubit/pdf_download/pdf_download_cubit.dart';

import 'package:mash/mash/presentation/manager/auth_bloc/auth_bloc.dart';
import 'package:mash/mash/presentation/manager/chat_bloc/chat_bloc.dart';
import 'package:mash/mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart';
import 'package:mash/mash/presentation/manager/home_work_notes_bloc/home_work_notes_bloc.dart';
import 'package:mash/mash/presentation/manager/notice_bloc/notice_bloc.dart';
import 'package:mash/mash/presentation/manager/teacher_bloc/teacher_bloc.dart';

// import 'package:mash/mash/presentation/manager/cubit/bottom_navigation_cubit.dart';
import 'package:mash/mash/presentation/utils/app_theme.dart';

import 'mash/presentation/manager/academic_bloc/academic_bloc.dart';
import 'mash/presentation/manager/cubit/bottom_navigation_cubit.dart';
import 'mash/presentation/manager/drawer_bloc/drawer_bloc.dart';
import 'mash/presentation/manager/profile_bloc/profile_bloc.dart';
import 'mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart';
import 'mash/presentation/manager/cubit/bottom_navigation_cubit/bottom_navigation_cubit.dart';
import 'mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart';
import 'mash/presentation/manager/bloc/profile/profile_bloc.dart';
import 'mash/presentation/router/router_config.dart';
import 'mash/presentation/utils/size_config.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MashApp extends StatelessWidget {
  const MashApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<DashboardBloc>()),
        BlocProvider(create: (context) => getIt<TeacherBloc>()),
        BlocProvider(
            create: (context) =>
                getIt<ProfileBloc>()..add(const ProfileEvent.getSiblings())),
        BlocProvider(create: (_) => getIt<NoticeBloc>()),
        BlocProvider(create: (_) => getIt<DashboardBloc>()),
        BlocProvider(create: (_) => getIt<DrawerBloc>()),
        BlocProvider(create: (_) => getIt<AcademicBloc>()),
        BlocProvider(create: (_) => getIt<HomeWorkNotesBloc>()),
        BlocProvider(create: (_) => getIt<ChatBloc>()),
        BlocProvider(create: (_) => BottomNavigationCubit()),
        BlocProvider(create: (_) => ChatBloc()),
        BlocProvider(create: (_) => PdfDownloadCubit()),
        BlocProvider(create: (_) => getIt<NoticeBloc>()),
      ],
      child: MaterialApp.router(
        theme: AppThemes.mainTheme,
        key: navigatorKey,
        routerConfig: AppRouteManager.router,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.linear(
              MediaQuery.of(context).size.shortestSide < 600 ? 0.85 : 1.5,
            )),
            child: child!,
          );
        },
      ),
    );
  }
}
