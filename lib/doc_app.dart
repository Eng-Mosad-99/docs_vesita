import 'package:doc_viseta/core/routes/app_routing.dart';
import 'package:doc_viseta/core/routes/routes.dart';
import 'package:doc_viseta/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocsViseta extends StatelessWidget {
  const DocsViseta({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'Doc App',
          theme: ThemeData(
            primaryColor: ColorsManager.kPrimaryColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute:  Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        ),);
  }
}
