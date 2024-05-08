import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/presentation/manager/auth_bloc/auth_bloc.dart';
import 'package:mash/mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart';
import 'package:mash/mash/presentation/manager/notice_bloc/notice_bloc.dart';
// import 'package:mash/mash/presentation/manager/cubit/bottom_navigation_cubit.dart';
import 'package:mash/mash/presentation/utils/app_theme.dart';

import 'mash/presentation/manager/cubit/bottom_navigation_cubit.dart';
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
        BlocProvider(create: (_) => BottomNavigationCubit()),
        BlocProvider(
          create: (_) => getIt<NoticeBloc>(),
        )
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
